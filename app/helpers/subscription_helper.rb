# Helper for all subscription related ..
module SubscriptionHelper
  def subscription_trial_days_txt
    remaining_days = current_user.sub_trial_remaining_days
    return nil unless remaining_days

    if remaining_days.negative?
      "Your Trial Period ended on #{date_and_time(current_user.sub_trial_end)}"
    elsif remaining_days.eql?(0)
      'Your Trial Period Expiring Today' if remaining_days.eql?(0)
    else
      "Your Trial Period expiring in #{pluralize(remaining_days, 'day')}"
    end
  end

  # Display alert to user when card is expiring about in 30 days in subscriptions tab
  def card_expiry_txt_msg(payment_method)
    card = payment_method&.card
    return unless card

    display_msg = nil
    exp_month = card.exp_month
    exp_year = card.exp_year
    exp_date = DateTime.new(exp_year, exp_month).end_of_month
    current_date = Date.today
    # number of days b/w current to card expiring date
    days_diff = (exp_date - current_date).to_i
    if days_diff.negative?
      display_msg = 'Your card is already expired.'
    elsif days_diff <= 30
      display_msg = "Your card is expring in #{pluralize(days_diff, 'day')}."
    end
    display_msg
  end
end
