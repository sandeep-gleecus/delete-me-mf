class User < ApplicationRecord
  attr_accessor :terms_and_conditions
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  has_many :activities, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :completed_lessons, dependent: :destroy
  has_many :food_entries, dependent: :destroy
  has_many :journal_entries, dependent: :destroy
  has_many :lessons, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :recipes, dependent: :destroy
  has_many :weight_entries, inverse_of: :user, dependent: :destroy
  has_many :cancellations, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy do |attachable|
    attachable.variant :small, resize: "120x120", quality: 50
    attachable.variant :medium, resize: "240x240", quality: 50
  end

  accepts_nested_attributes_for :weight_entries, reject_if: Proc.new { |weight_entry| weight_entry[:weight].blank? }
  accepts_nested_attributes_for :cancellations, reject_if: Proc.new { |cancelation_reason| cancelation_reason[:reason].blank? }

  validates_presence_of :email
  validates_format_of :email, with: Devise::email_regexp, message: "Please provide a valid email address"
  validates_uniqueness_of :email, case_sensitive: false
  validates_presence_of :password, message: "Please provide a password", on: :create

  validates_acceptance_of :terms_and_conditions, message: "You have to agree to our terms and conditions"
  validates :avatar, content_type: [:png, :jpg, :jpeg, :webp]
  validates_presence_of :name, message: "Name can’t be blank", on: :update, unless: :encrypted_password_changed?
  validates_presence_of :motherhood_stage, message: "We need to know what stage you’re at", on: :update, unless: :encrypted_password_changed?
  validate :pregnancy_due_date_within_40_weeks, if: Proc.new { |user| pregnancy_due_date? }, on: :update, unless: :encrypted_password_changed?
  # validate :birth_date_not_in_future, if: Proc.new { |user| birth_date? }, on: :update, unless: :encrypted_password_changed?
  validate :birth_date_not_in_future, on: :update
  validate :most_recent_birth_date_not_in_future, if: Proc.new { |user| most_recent_birth_date? }, on: :update, unless: :encrypted_password_changed?
  validate :date_of_birth_not_in_future, if: Proc.new { |user| date_of_birth? }, on: :update, unless: :encrypted_password_changed?

  validates :phone_number, presence: true,
            length: { minimum: 9, maximum: 12 },
            numericality: true, on: :update

  after_create do
    JournalEntry.create_sign_up_entry(self)
    # create_intercom_contact unless Rails.env.development?
    create_stripe_customer unless Rails.env.development?
  end

  after_update do
    update_intercom_contact
    # update_column(:daily_calorie_goal, calculate_daily_calorie_goal) if motherhood_stage? && beyond?
  end

  rails_admin do
    list do
      fields :name, :email, :motherhood_stage do
        searchable true
      end
      field :intercom_id do
        label "Intercom ID"
        searchable true
      end
      field :stripe_id do
        label "Stripe ID"
        searchable true
      end
      field :free_subscription do
        searchable true
      end
    end

    show do
      fields :id, :name, :email, :phone_number, :motherhood_stage
      field :intercom_id do
        label "Intercom ID"
      end
      field :stripe_id do
        label "Stripe ID"
      end
      fields :free_subscription, :subscription, :pregnancy_due_date, :birth_date, :most_recent_birth_date, :date_of_birth, :height, :weight_entries, :fitness_goal, :activity_multiplier, :daily_calorie_goal, :admin
      field :avatar, :active_storage
      fields :created_at, :updated_at
    end

    create do
      fields :name, :email, :phone_number, :password
      field :intercom_id do
        label "Intercom ID"
      end
      field :stripe_id do
        label "Stripe ID"
      end
      fields :free_subscription, :subscription, :admin
    end

    edit do
      fields :name, :email, :phone_number, :password
      field :intercom_id do
        label "Intercom ID"
      end
      field :stripe_id do
        label "Stripe ID"
      end
      fields :free_subscription, :subscription, :admin
      field :motherhood_stage, :enum do
        enum do
          User::MOTHERHOOD_STAGES
        end
      end
      fields :pregnancy_due_date, :birth_date, :most_recent_birth_date, :date_of_birth, :height, :weight_entries, :fitness_goal, :activity_multiplier, :daily_calorie_goal
      field :avatar, :active_storage
    end
  end

  MOTHERHOOD_STAGES = [:pregnancy, :postpartum, :beyond]
  FITNESS_GOAL = [:fat_loss, :maintain, :gain]
  ACTIVITY_MULTIPLIER = [:sedentary, :lightly, :moderately, :very, :extra]
  PREGNANCY_WEEK_FACTS = {
      week_0: {
          fact_1: "Its still too early for an embryo to be developed.",
          fact_2: "Still yet to grow.",
          fact_3: "Some early symptoms you might notice by week 2 that indicate you're pregnant include a missed period, moodiness, tender and swollen breasts.",
          fact_4: 'As the second week of pregnancy progresses, you approach ovulation.'
      },
      week_1: {
          fact_1: "Its still too early for an embryo to be developed.",
          fact_2: "Still yet to grow.",
          fact_3: "Some early symptoms you might notice by week 2 that indicate you're pregnant include a missed period, moodiness, tender and swollen breasts.",
          fact_4: 'As the second week of pregnancy progresses, you approach ovulation.'
      },
      week_2: {
          fact_1: "Its still too early for an embryo to be developed.",
          fact_2: "Still yet to grow.",
          fact_3: "Some early symptoms you might notice by week 2 that indicate you're pregnant include a missed period, moodiness, tender and swollen breasts.",
          fact_4: 'As the second week of pregnancy progresses, you approach ovulation.'
      },
      week_3: {
          fact_1: "Its still too early for an embryo to be developed.",
          fact_2: "Still yet to grow.",
          fact_3: "Some early symptoms you might notice by week 2 that indicate you're pregnant include a missed period, moodiness, tender and swollen breasts.",
          fact_4: 'As the second week of pregnancy progresses, you approach ovulation.'
      },
      week_4: {
          fact_1: "Your baby is the size of a poppy seed.",
          fact_2: "Your baby is now an embryo and starting to develop organs.",
          fact_3: "This week may be the first time you have an inkling of the changes going on."
      },
      week_5: {
          fact_1: "Your baby is the size of a sesame seed.",
          fact_2: "Your baby’s heart will start to beat around this time.",
          fact_3: "Its completely normal not to feel pregnant yet, morning sickness won't kick in for another week or so."
      },
      week_6: {
          fact_1: "Your baby is the size of a lentil.",
          fact_2: "Your baby’s facial features are starting to form.",
          fact_3: "Buds are swelling where their arms will grow."
      },
      week_7: {
          fact_1: "Your baby is the size of a blueberry.",
          fact_2: "Your baby’s body and particularly their brain is growing and developing every day.",
          fact_3: "Facial features are taking shape as well as their arms lengthening."
      },
      week_8: {
          fact_1: "Your baby is the size of a kidney bean.",
          fact_2: "This is a critical period of development as their brain becomes more complex.",
          fact_3: "Ridges are developing where their fingers with be."
      },
      week_9: {
          fact_1: "Your baby is the size of a grape.",
          fact_2: "All your baby’s body parts are now present, although not fully formed.",
          fact_3: "Your placenta is almost fully functioning."
      },
      week_10: {
          fact_1: "Your baby is the size of an olive.",
          fact_2: "Your baby’s heart is now fully developed and beats around 180 times a minute.",
          fact_3: "Their legs, hips and arms can rotate.",
          fact_4: "Your little embryo is now a fetus."
      },
      week_11: {
          fact_1: "Your baby is the size of a fig.",
          fact_2: "Your baby is 4.1cm head to bottom.",
          fact_3: "0.2 oz in weight."
      },
      week_12: {
          fact_1: "Your baby is the size of a lime.",
          fact_2: "Your baby’s facial features are starting to look more human.",
          fact_3: "Your baby’s skeleton is hardening into bone.",
          fact_4: "Little ear lobs are developing."
      },
      week_13: {
          fact_1: "Your baby is the size of a pea pod.",
          fact_2: "Tiny little finger prints are forming.",
          fact_3: "They may even start sucking their thumb.",
          fact_4: "Baby boys testicles & baby girl ovaries have formed."
      },
      week_14: {
          fact_1: "Your baby is the size of a lemon.",
          fact_2: "Fine, downy hair called lanugo is sprouting on your baby’s head and body.",
          fact_3: "Muscles in your baby’s face start to twitch."
      },
      week_15: {
          fact_1: "Your baby is the size of a apple.",
          fact_2: "Your baby is 10.1cm in length and 2.5 oz in weight.",
          fact_3: "Your baby is starting to hear noises."
      },
      week_16: {
          fact_1: "Your baby is the size of a avocado.",
          fact_2: "Your baby is getting ready for a growth spurt.",
          fact_3: "Coordination is developing."
      },
      week_17: {
          fact_1: "Your baby is the size of a turnip.",
          fact_2: "Your baby’s nervous system is developing.",
          fact_3: "Your baby’s hearing is getting better. Play music to see if they move."
      },
      week_18: {
          fact_1: "Your baby is the size of a bell pepper.",
          fact_2: "Baby’s ears are in their final position, eyebrows are taking shape and eyes are twitching.",
          fact_3: "Baby girls vagina, womb and fallopian tubes are developed.",
          fact_4: "Baby boys testicles are moving down from pelvis and his penis is defined."
      },
      week_19: {
          fact_1: "Your baby is the size of an heirloom tomato.",
          fact_2: "Senses are developing.",
          fact_3: "Limbs are now in proportion to the rest of their body."
      },
      week_20: {
          fact_1: "Your baby is the size of a banana.",
          fact_2: "From head to toe they measure 25.6cm.",
          fact_3: "This week vernix caseosa begins to coat your baby for protection."
      },
      week_21: {
          fact_1: "Your baby is the size of a carrot.",
          fact_2: "Capillaries are forming under baby’s skin.",
          fact_3: "You may have started to feel baby’s movements."
      },
      week_22: {
          fact_1: "Your baby is the size of a spaghetti squash.",
          fact_2: "Your baby looks like a mini newborn.",
          fact_3: "Their first poo is accumulating in their gut."
      },
      week_23: {
          fact_1: "Your baby is the size of a large mango.",
          fact_2: "Your baby now has a strong heart beat.",
          fact_3: "Sounds from further away can be heard by your baby."
      },
      week_24: {
          fact_1: "Your baby is the size a corn on the cob.",
          fact_2: "Your baby is using facial expressions more.",
          fact_3: "Week 24 is the threshold of viability i.e if born now their lungs may have developed enough to survive."
      },
      week_25: {
          fact_1: "Your baby is the size of an average swede.",
          fact_2: "Your baby is putting on weight and the skin is smoothing.",
          fact_3: "Baby can sense light and may jump to loud noises."
      },
      week_26: {
          fact_1: "Your baby is the size of a red cabbage.",
          fact_2: "Lots of developing this week! Lungs developing and airways branching out.",
          fact_3: "Taste buds are developed and adult teeth grow as buds in their gums."
      },
      week_27: {
          fact_1: "Your baby is the size of a head of cauliflower.",
          fact_2: "At the end of this week you’ll move into the 3rd trimester.",
          fact_3: "Baby can now open and close their eyes, they sleep and wake at regular intervals."
      },
      week_28: {
          fact_1: "Your baby is the size of an aubergine.",
          fact_2: "Your baby is getting big and strong, but still plenty of developing to do.",
          fact_3: "They may be experiencing hiccups as their digestive system develops."
      },
      week_29: {
          fact_1: "Your baby is the size of a butternut squash.",
          fact_2: "Almost half of baby’s energy is going towards developing their brain.",
          fact_3: "Your baby is getting used to hearing your voice and will be able to recognise it as soon as they are born."
      },
      week_30: {
          fact_1: "Your baby is the size of a good sized cabbage.",
          fact_2: "Getting a good nights sleep may becoming a struggle for you with trips to the loo and heartburn.",
          fact_3: "Only 10 weeks to go!"
      },
      week_31: {
          fact_1: "Baby is the size of a coconut.",
          fact_2: "Movements are starting to change due to lack of room to manouevre, but you should still feel them just as often.",
          fact_3: "Your baby is now 41.1 cm and 3.3 lbs."
      },
      week_32: {
          fact_1: "Your baby is the size of kale.",
          fact_2: "Your baby still has growing to do, but they may be preparing for birth by getting into head down position.",
          fact_3: "There is plenty of time for baby to move into birth position."
      },
      week_33: {
          fact_1: "Your baby is the size of a pineapple.",
          fact_2: "The weight they are putting on will keep them warm once they are born.",
          fact_3: "Baby’s skull is still soft and pliable, making it easier for you to give birth."
      },
      week_34: {
          fact_1: "Your baby is the size of an average cantaloupe melon.",
          fact_2: "The vast majority of babies born from 34 weeks onwards are perfectly healthy.",
          fact_3: "Your baby is 45 cm and 4.7 lbs."
      },
      week_35: {
          fact_1: "Your baby is the size of a honeydew melon.",
          fact_2: "By now you are probably seeing your baby’s limbs pushing out of your belly.",
          fact_3: "From now on your baby will gain 30g every day for the next few weeks."
      },
      week_36: {
          fact_1: "Your baby is the size of a romaine lettuce.",
          fact_2: "Your baby is starting to shed the langugo and vernix.",
          fact_3: "In late pregnancy you’ll go into prelabour, Braxton Hick contractions, welcome prelabour tightening’s as its an encouraging sign that your cervix is changing."
      },
      week_37: {
          fact_1: "Your baby is the size of Swiss chard.",
          fact_2: "At 37 weeks you are now considered full term.",
          fact_3: "Baby’s movements might feel a little different, but as often as they were before."
      },
      week_38: {
          fact_1: "Your baby is the size of a leek.",
          fact_2: "Your baby is still building a layer of fat to help control their body temperature after they are born.",
          fact_3: "Their eye colour still isn't set."
      },
      week_39: {
          fact_1: "Your baby is the size of a mini-watermelon.",
          fact_2: "The big day is nearly here!",
          fact_3: "Only 4% of babies born on their expected due date."
      },
      week_40: {
          fact_1: "Your baby is the size of a small pumpkin.",
          fact_2: "Possibly 7.6lbs and 51.2cm in length.",
          fact_3: "It might be a tight squeeze for your baby, but its still busy growing."
      },
      week_41: {
          fact_1: "Your baby is the size of a baby.",
          fact_2: "It might be that your doctor or midwife will talk to you about inducing labour very soon.",
          fact_3: "Its unlikely that they will wait more than 2 weeks past your due date."
      }
  }

  def create_intercom_contact
    return if intercom_id != nil

    contacts = intercom.contacts.search(
        "query": {
            "field": 'email',
            "operator": '=',
            "value": email
        }
    )
    if contacts.count > 0
      update_attribute(:intercom_id, contacts.first.id)
      return
    end

    contact = intercom.contacts.create(
        name: name,
        email: email,
        phone: phone_number,
        role: "user",
        signed_up_at: Time.now.to_i,
        last_seen_at: Time.now.to_i,
        )
    update_attribute(:intercom_id, contact.id)
  rescue Intercom::MultipleMatchingUsersError

  end

  def intercom
    @intercom ||= Intercom::Client.new(token: ENV["INTERCOM_ACCESS_TOKEN"], api_version: "2.4")
  end

  def motherhood_stage_for_intercom
    return '' if motherhood_stage.nil?
    # set exact motherhood stage for Postpartum to trigger specific Postpartum welcome email
    if motherhood_stage == "postpartum"
      return self.postpartum_trimester? ? "Postpartum Trimester 4" : "Postpartum Rebuild"
    end

    return motherhood_stage.capitalize
  end

  def update_intercom_contact
    # Create a contact in intercom if not already there
    create_intercom_contact if intercom_id.nil?
    return if intercom_id.nil?

    # Update Contact in intercom
    begin
      contact = intercom.contacts.find(id: intercom_id)
    rescue Intercom::ResourceNotFound => _e
      contact = nil
      Rails.logger.error("====> IntercomUpdateError: ResourceNotFound for: #{email}")
    end
    return unless contact

    contact.name = name
    contact.phone = phone_number
    contact.custom_attributes = {
        "Pregnancy Date": pregnancy_due_date,
        "Birth Date": birth_date,
        "Motherhood Stage": motherhood_stage_for_intercom
    }
    intercom.contacts.save(contact)
  end

  def create_stripe_customer
    customer = Stripe::Customer.create({
                                           name: name,
                                           email: email
                                       })
    update_attribute(:stripe_id, customer.id)
  end

  def cancel
    sub = Stripe::Subscription.update(subscription, {cancel_at_period_end: true})
    update(status: 'canceled', ends_at: Time.at(sub.cancel_at))
  end

  #  ===> STRIPE SUBSCRIPTION Related ======
  def stripe_subscription
    return unless subscription

    @stripe_subscription ||= Stripe::Subscription.retrieve(subscription['id'])
  end

  def sub_trial_start
    return unless stripe_subscription&.trial_start

    Time.zone.at(stripe_subscription.trial_start)
  end

  def sub_trial_end
    return unless stripe_subscription&.trial_end

    Time.zone.at(stripe_subscription.trial_end)
  end

  def sub_cancel_end_date
    return unless stripe_subscription

    cancel_at = stripe_subscription.cancel_at
    return unless cancel_at

    Time.zone.at(cancel_at)
  end

  # CASE 1: nil => no trial
  # CASE 2: negative => already ended
  # CASE 3: 0 => expiring today
  # CASE 4: positive => expiring in x days
  def sub_trial_remaining_days
    return unless sub_trial_end

    time_diff = (sub_trial_end - Time.zone.now)
    # (time_diff / 1.hour).round => in hours etc.
    (time_diff / 1.day).round
  end

  # Check if opted for free extension of 2 weeks
  def free_subscription_extended?
    return false unless subscription

    subscription['free_sub_extended'].nil? ? false : subscription['free_sub_extended']
  end

  # Check if subscription cancelled or not
  def subscription_cancelled?
    return false unless subscription?

    case subscription['status']
    when 'canceled', 'cancelled' # uses both canceled and cancelled UK/US spellings because Stripe uses both
      true
    else
      false
    end
  end

  def has_active_subscription?
    return false unless subscription?

    case subscription["status"]
    when "active", "trialing", "trialling" # uses both trialing and trialling UK/US spellings because Stripe uses both
      true
    when "incomplete", "incomplete_expired", "past_due", "canceled", "cancelled", "unpaid" # uses both canceled and cancelled UK/US spellings because Stripe uses both
      false
    end
  end

  # If no avatar fallback to default
  def attached_avatar_path
    avatar.attached? ? avatar : 'avatar-default.jpg'
  end

  def exempt_from_subscription?
    free_subscription? || admin?
  end

  def onboarded?
    name? && motherhood_stage?
  end

  def pregnancy?
    motherhood_stage.to_sym == :pregnancy
  end

  def postpartum?
    motherhood_stage.to_sym == :postpartum
  end

  def beyond?
    motherhood_stage.to_sym == :beyond
  end

  def beyond_full_setup?
    weight_entries.exists? && height? && date_of_birth? && activity_multiplier? && fitness_goal?
  end

  def pregnancy_conceived_date
    pregnancy_due_date - 40.weeks
  end

  def pregnancy_trimester_1?
    pregnancy_week >= 1 && pregnancy_week <= 12
  end

  def pregnancy_trimester_2?
    pregnancy_week >= 13 && pregnancy_week <= 27
  end

  def pregnancy_trimester_3?
    pregnancy_week >= 28 && pregnancy_week <= 40
  end

  def pregnancy_week
    (Date.current - pregnancy_conceived_date).to_i / 7
  end

  def pregnancy_progress_percentage
    pregnancy_week.to_f / 40 * 100
  end

  def postpartum_trimester?
    return false unless birth_date

    Date.current < (birth_date + 12.weeks)
  end

  def postpartum_trimester_end_date
    birth_date + 12.weeks
  end

  def postpartum_trimester_week
    (Date.current - birth_date).to_i / 7
  end

  def postpartum_trimester_progress_percentage
    postpartum_trimester_week.to_f / 12 * 100
  end

  def postpartum_rebuild?
    Date.current > (birth_date + 12.weeks)
  end

  def postpartum_rebuild_end_date
    postpartum_trimester_end_date + 10.weeks
  end

  def postpartum_rebuild_week
    (Date.current - postpartum_trimester_end_date).to_i / 7
  end

  def postpartum_rebuild_progress_percentage
    postpartum_rebuild_week.to_f / 10 * 100
  end

  def daily_calorie_goal
    # TODO: return if no weight_entries & height
    age = (Date.current.year - date_of_birth.year).floor
    bmr = 655 + (9.6 * weight_entries.last.weight) + (1.8 * height) - (4.7 * age)

    case activity_multiplier
    when "sedentary"
      tdee = bmr * 1.2
    when "lightly"
      tdee = bmr * 1.375
    when "moderately"
      tdee = bmr * 1.55
    when "very"
      tdee = bmr * 1.752
    when "extra"
      tdee = bmr * 1.9
    end

    case fitness_goal
    when "fat_loss"
      daily_calories = tdee * 0.75
    when "maintain"
      daily_calories = tdee * 1
    when "gain"
      daily_calories = tdee * 1.1
    end

    daily_calories.round
  end

  private

  def pregnancy_due_date_within_40_weeks
    if pregnancy_due_date < Date.current
      errors.add(:pregnancy_due_date, "can’t be in the past")
    elsif pregnancy_due_date > Date.current + 40.weeks
      errors.add(:pregnancy_due_date, "must be within 40 weeks")
    end
  end

  def birth_date_not_in_future
    return unless encrypted_password_changed?
    return unless birth_date.present?

    errors.add(:birth_date, "can’t be in the future") if birth_date > Date.current
  end

  def most_recent_birth_date_not_in_future
    errors.add(:most_recent_birth_date, "can’t be in the future") if most_recent_birth_date > Date.current
  end

  def date_of_birth_not_in_future
    errors.add(:date_of_birth, "can’t be in the future") if date_of_birth > Date.current
  end
end
