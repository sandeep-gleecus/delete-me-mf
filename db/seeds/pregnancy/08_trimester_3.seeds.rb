# Relationships
pregnancy = Category.find_by(title: "Pregnancy")

# Trimester 3
trimester_3 = pregnancy.children.find_or_initialize_by(title: "Trimester 3")
trimester_3.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
trimester_3.description = "Pregnancy Trimester 3"
trimester_3.save!
