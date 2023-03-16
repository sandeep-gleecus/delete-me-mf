# Relationships
postpartum = Category.find_by(title: "Postpartum")

# Secondary
whats_new = postpartum.children.find_or_initialize_by(title: "What’s New")
whats_new.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
whats_new.description = "Postpartum – What’s New"
whats_new.save!
