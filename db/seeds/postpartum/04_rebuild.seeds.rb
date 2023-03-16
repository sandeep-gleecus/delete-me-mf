# Relationships
postpartum = Category.find_by(title: "Postpartum")

# Rebuild
rebuild = postpartum.children.find_or_initialize_by(title: "Rebuild")
rebuild.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
rebuild.category_type = :body
rebuild.description = "Postpartum Rebuild"
rebuild.save!
