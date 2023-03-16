# Relationships
postpartum = Category.find_by(title: "Postpartum")

# Resources
resources = postpartum.children.find_or_initialize_by(title: "Resources")
resources.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
resources.description = "Postpartum – Resources"
resources.save!
