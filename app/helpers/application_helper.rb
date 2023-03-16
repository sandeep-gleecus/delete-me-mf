module ApplicationHelper
  # Display Monthly|Year Pricing details to non signed users
  def header_image_pricing_display?
    exclude = "#{controller.controller_name}/#{controller.action_name}"
    case exclude
    when 'main/index', 'main/pregnancy', 'main/postpartum', 'main/beyond'
      true
    else
      false
    end
  end
end
