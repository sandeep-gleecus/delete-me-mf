# Nutrition
nutrition = Category.find_or_initialize_by(title: "Nutrition")
nutrition.featured_image.attach(
  io: File.open("app/assets/images/seeds/nutrition.jpg"),
  filename: "nutrition.jpg",
  content_type: "image/jpeg"
)
nutrition.description = "nutrition Programs"
nutrition.category_type = :body
nutrition.save!

# Health & Wellbeing
health_wellbeing = Category.find_or_initialize_by(title: "Health & Wellbeing")
health_wellbeing.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
health_wellbeing.description = "Health & Wellbeing Programs"
health_wellbeing.category_type = :body
health_wellbeing.save!
