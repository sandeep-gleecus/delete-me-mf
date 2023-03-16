# Pregnancy
pregnancy = Category.find_or_initialize_by(title: "Pregnancy")
pregnancy.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
pregnancy.description = "Pregancy"
pregnancy.save!
