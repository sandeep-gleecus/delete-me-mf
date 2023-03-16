# Beyond
beyond = Category.find_or_initialize_by(title: "Beyond")
beyond.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
beyond.description = "Beyond"
beyond.save!
