# Relationships
rebuild = Category.find_by(title: "Postpartum").children.find_by(title: "Rebuild")
shared = Category.find_by(title: "Shared")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Secondary
secondary = rebuild.children.find_or_initialize_by(title: "Secondary")
secondary.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
secondary.category_type = :body
secondary.description = "Pregnancy Trimester 4 – Secondary"
secondary.save!

## Secondary – Lesson 1
## Shared – Physical activity guidelines – after childbirth
lesson_1 = shared.lessons.find_by(title: "Physical activity guidelines – after childbirth")
lesson_1.categories << secondary
lesson_1.save!
