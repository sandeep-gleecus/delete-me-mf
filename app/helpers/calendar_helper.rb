module CalendarHelper
  def category_type_image(category_type)
    case category_type.to_sym
    when :mind
      icon_name = "brain"
    when :body
      icon_name = "heartbeat"
    when :soul
      icon_name = "heart"
    end
    icon "fas", icon_name
  end
end
