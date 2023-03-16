module DashboardHelper
  def current?(key, path)
    "#{key}" if current_page? path
  end

  # For progress bar (e.g. 22th Feb '22)
  def convert_to_short_date(date)
    date.strftime("#{date.day.ordinalize} %b '%y")
  end

  # For calendar (e.g. Tuesday at 9:30am)
  def convert_to_calendar_date(date)
    date.strftime("%A at %l:%M%P")
  end

  # For Weight Entry's e.g. 54.5 kg stays as float whilst 54.0 kg becomes 54 kg
  def convert_to_kg(weight)
    weight == weight.to_i ? weight.to_i : number_with_precision(weight, precision: 1)
  end

  # For Journal month (e.g. Feb)
  def date_of_month(date)
    date.strftime("%b")
  end

  # For Journal day (e.g. 22)
  def day_of_month(date)
    date.strftime("%d")
  end

  def date_and_time(date)
    date.strftime("#{date.day.ordinalize} %b '%y at %l:%M%P")
  end

  def time(date)
    date.strftime("%l:%M%P")
  end

  def completed_badge
    "<div class='badge badge-sm badge-success mb-0'>#{icon "fas", "check", class: "fa-fw me-1"}Completed</div>".html_safe
  end

  def primary_section_title(user)
    user_name = "#{shortened_name(user.name)}'s"
    if user.beyond?
      "#{user_name} challenges and programs"
    elsif user.postpartum?
      "#{user_name} Programs"
    elsif user.pregnancy?
      "#{user_name} classes this week"
    else
      "#{user_name} classes this week"
    end
  end

  def progress_week_icon(user)
    icon "fas", "calendar-alt", class: "fa-fw"
    # if user.pregnancy?
    #   # Pregnancy
    #   case true
    #   when user.pregnancy_week == 1
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 2
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 3
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 4
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 5
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 6
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 7
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 8
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 9
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 10
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 11
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 12
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 13
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 14
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 15
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 16
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 17
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 18
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 19
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 20
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 21
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 22
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 23
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 24
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 25
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 26
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 27
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 28
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 29
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 30
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 31
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 32
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 33
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 34
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 35
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 36
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 37
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 38
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 39
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 40
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week == 41
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   when user.pregnancy_week >= 42
    #     icon "fas", "person-pregnant", class: "fa-fw"
    #   end
    # elsif user.postpartum?
    #  if user.postpartum_trimester?
    #   # T4
    #   icon "fas", "baby", class: "fa-fw"
    #  else
    #   # Rebuild
    #   icon "fas", "stairs", class: "fa-fw"
    #  end
    # elsif user.beyond?
    #   # Beyond
    #   icon "fas", "children", class: "fa-fw"
    # end
  end

  def convert_to_badge(type, value, badge_class = "")
    case type.to_sym
    when :calories_consumed
      icon_name = "utensils"
      unit = "kcal"
      badge_color = "badge-secondary"
    when :calories_burned
      icon_name = "fire"
      unit = "kcal"
      badge_color = "badge-secondary"
    when :time_recorded
      icon_name = "stopwatch"
      unit = "min"
      badge_color = "badge-highlight"
    when :time_length
      icon_name = "clock"
      badge_color = "badge-primary"
    when :time_preparation
      icon_name = "hand-paper"
      unit = "min"
      badge_color = "badge-secondary-brand"
    when :time_cooking
      icon_name = "hourglass"
      unit = "min"
      badge_color = "badge-highlight"
    when :time_live
      icon_name = "play"
      badge_color = "badge-danger"
    end
    icon_name

    content_tag(:span, "#{icon "fas", icon_name, class: "fa-fw me-1"}#{value} #{unit}#{("s" if value.to_i > 1) if unit}".html_safe, class: "badge #{badge_color} #{badge_class}") if value.to_i > 0
  end
end
