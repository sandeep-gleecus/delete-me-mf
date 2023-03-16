# Relationships
experts = Category.find_by(title: "Experts")
user_pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Pilates Instructor
pilates_instructor = experts.children.find_or_initialize_by(title: "Pilates Instructor")
pilates_instructor.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/pilates-instructor/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
pilates_instructor.resource.attach(
  io: File.open("app/assets/images/seeds/experts/pilates-instructor/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
pilates_instructor.category_type = :body
pilates_instructor.description = "Pilates Instructor"
pilates_instructor.save!

## Lesson 1
lesson_1 = pilates_instructor.lessons.find_or_initialize_by(title: "Jemma Winborn")
lesson_1.categories << pilates_instructor
lesson_1.user = user_pilates_instructor
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/pilates-instructor/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Jemma Winborn"
lesson_1.duration = "0:40"
lesson_1.vimeo_url = "https://vimeo.com/674881322"
lesson_1.save!
