# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 12
week_12 = trimester_1.children.find_or_initialize_by(title: "Week 12")
week_12.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_12.category_type = :body
week_12.description = "Pregnancy Trimester 1 – Week 12"
week_12.save!

## Week 12 – Lesson 1
lesson_1 = week_12.lessons.find_or_initialize_by(title: "Workout – Week 12 / Class 1")
lesson_1.categories << week_12
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-12/workout-week-12-class-1.jpg"),
  filename: "workout-week-12-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 12 / Class 1"
lesson_1.duration = "35:53"
lesson_1.vimeo_url = "https://vimeo.com/670411153"
lesson_1.save!

## Week 12 – Lesson 2
lesson_2 = week_12.lessons.find_or_initialize_by(title: "Yoga – Week 12 / Class 1")
lesson_2.categories << week_12
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-12/yoga-week-12-class-1.jpg"),
  filename: "yoga-week-12-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Yoga with Abbey – Week 12 / Class 1"
lesson_2.duration = "10:10"
lesson_2.vimeo_url = "https://vimeo.com/673636092"
lesson_2.save!
