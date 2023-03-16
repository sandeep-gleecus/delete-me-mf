# Relationships
beyond = Category.find_by(title: "Beyond")

# Secondary
whats_new = beyond.children.find_or_initialize_by(title: "What’s New")
whats_new.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
whats_new.description = "Beyond – What’s New"
whats_new.save!
