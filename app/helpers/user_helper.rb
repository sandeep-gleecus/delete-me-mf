module UserHelper
  def get_motherhood_stage_icon(motherhood_stage)
    case motherhood_stage
    when "pregnancy"
      icon "fas", "baby"
    when "postpartum"
      icon "fas", "baby-carriage"
    when "beyond"
      icon "fas", "female"
    end
  end

  def get_fitness_goal_icon(fitness_goal)
    case fitness_goal
    when :fat_loss
      icon "fas", "long-arrow-alt-down"
    when :maintain
      icon "fas", "minus"
    when :gain
      icon "fas", "long-arrow-alt-up"
    end
  end

  def get_activity_multiplier_icon(activity_multiplier)
    case activity_multiplier
    when :sedentary
      icon "fas", "walking"
    when :lightly
      icon "fas", "hiking"
    when :moderately
      icon "fas", "running"
    when :very
      icon "fas", "swimmer fa-flip-horizontal"
    when :extra
      icon "fas", "biking"
    end
  end

  def display_avatar(user, size = 50, avatar_classes = "")
    retina_size = size * 2
    url = user.avatar.attached? ? user.avatar.variant(resize_to_fit: [retina_size, retina_size], quality: 50) : "avatar-default.jpg"
    image_tag url, height: size, alt: "User avatar", class: "avatar #{avatar_classes}"
  end

  def shortened_name(name)
    name.gsub(/\s.+/, "")
  end

  # Short term solution after discussion with Kurtis
  def expert_title(user_name)
    case user_name
    when "Sophie Belle"
      "Breathwork Facilitator"
    when "Hannah Poulton"
      "C-Section Scar Therapist"
    when "Caroline Hayden"
      "Dental Health"
    when "Azeeta Nielsen"
      "Doula"
    when "Michelle Baynham"
      "Founder, Fitness and Nutrition"
    when "Tamara Cianfini"
      "Hypnobirthing"
    when "Heidi Hembrey"
      "Lactation Consultant"
    when "Trisha Champaneri"
      "Meditation"
    when "Meghan Roe"
      "Midwife"
    when "Bally Lidder"
      "Pelvic Health"
    when "Jemma Winborn"
      "Pilates Instructor"
    when "Lisa Lamb"
      "Sleep Consultant"
    when "Abbey Elsie"
      "Yoga Instructor"
    end
  end
end
