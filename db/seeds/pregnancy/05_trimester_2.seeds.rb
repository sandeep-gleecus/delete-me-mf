# Relationships
pregnancy = Category.find_by(title: "Pregnancy")

# Trimester 2
trimester_2 = pregnancy.children.find_or_initialize_by(title: "Trimester 2")
trimester_2.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
trimester_2.description = "Pregnancy Trimester 2"
trimester_2.save!
