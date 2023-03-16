# Experts
experts = Category.find_or_initialize_by(title: "Experts")
experts.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
experts.description = "Experts"
experts.save!
