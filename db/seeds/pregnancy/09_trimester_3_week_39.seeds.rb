# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 39
week_39 = trimester_3.children.find_or_initialize_by(title: "Week 39")
week_39.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_39.description = "Pregnancy Trimester 3 – Week 39"
week_39.save!

## Week 39 – Lesson 1
lesson_1 = week_39.lessons.find_or_initialize_by(title: "Workout – Week 39 / Class 1")
lesson_1.categories << week_39
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-39/workout-week-39-class-1.jpg"),
  filename: "workout-week-39-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 39 / Class 1"
lesson_1.duration = "18:59"
lesson_1.vimeo_url = "https://vimeo.com/672342212"
lesson_1.save!
