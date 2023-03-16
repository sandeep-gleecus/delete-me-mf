# Relationships
pregnancy = Category.find_by(title: "Pregnancy")

# Trimester 1
trimester_1 = pregnancy.children.find_or_initialize_by(title: "Trimester 1")
trimester_1.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
trimester_1.description = "Pregnancy Trimester 1"
trimester_1.save!
