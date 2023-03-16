# Relationships
experts = Category.find_by(title: "Experts")
user_yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Yoga Instructor
yoga_instructor = experts.children.find_or_initialize_by(title: "Yoga Instructor")
yoga_instructor.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/yoga-instructor/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
yoga_instructor.resource.attach(
  io: File.open("app/assets/images/seeds/experts/yoga-instructor/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
yoga_instructor.category_type = :body
yoga_instructor.description = "Yoga Instructor"
yoga_instructor.save!

## Lesson 1
lesson_1 = yoga_instructor.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << yoga_instructor
lesson_1.user = user_yoga_instructor
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/yoga-instructor/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Yoga Instructor – Introduction"
lesson_1.duration = "0:53"
lesson_1.vimeo_url = "https://vimeo.com/683742915"
lesson_1.save!
