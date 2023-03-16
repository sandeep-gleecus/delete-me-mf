module ImageHelper
  def resize_to_tile(image)
    image.variant(resize_to_fit: [100, 100], quality: 50)
  end

  def resize_to_small_image(image)
    image.variant(resize_to_fit: [300, 300], quality: 50)
  end

  def resize_to_medium_image(image)
    image.variant(resize_to_fit: [600, 600], quality: 50)
  end

  def resize_to_large_image(image)
    image.variant(resize_to_fit: [1500, 1500], quality: 50)
  end
end
