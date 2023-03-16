module ActivityHelper
  def activity_icon(activity_type)
    case activity_type.to_sym
    when :breathwork
      icon_name = "wind"
    when :cycle
      icon_name = "biking"
    when :meditate
      icon_name = "yin-yang"
    when :run
      icon_name = "running"
    when :swim
      icon_name = "swimmer fa-flip-horizontal"
    when :walk
      icon_name = "walking"
    when :workout
      icon_name = "dumbbell"
    when :yoga
      icon_name = "praying-hands"
    end
    icon "fas", icon_name
  end
end
