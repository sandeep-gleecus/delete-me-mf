# Postpartum
postpartum = Category.find_or_initialize_by(title: "Postpartum")
postpartum.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
postpartum.description = "Postpartum"
postpartum.save!
