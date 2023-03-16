# Relationships
experts = Category.find_by(title: "Experts")
user_dental_health = User.find_by(email: "dental-health@motherfit.co.uk")

# Dental Health
dental_health = experts.children.find_or_initialize_by(title: "Dental Health")
dental_health.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/dental-health/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
dental_health.resource.attach(
  io: File.open("app/assets/images/seeds/experts/dental-health/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
dental_health.category_type = :mind
dental_health.description = "Dental Health"
dental_health.save!

## Lesson 1
lesson_1 = dental_health.lessons.find_or_initialize_by(title: "Dental health")
lesson_1.categories << dental_health
lesson_1.user = user_dental_health
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/dental-health/dental-health.jpg"),
  filename: "dental-health.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Dental health"
lesson_1.duration = "4:20"
lesson_1.vimeo_url = "https://vimeo.com/537782105"
lesson_1.save!
