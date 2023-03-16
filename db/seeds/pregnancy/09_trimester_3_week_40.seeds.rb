# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 40
week_40 = trimester_3.children.find_or_initialize_by(title: "Week 40")
week_40.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_40.description = "Pregnancy Trimester 3 – Week 40"
week_40.save!

## Week 40 – Lesson 1
lesson_1 = week_40.lessons.find_or_initialize_by(title: "Workout – Week 40 / Class 1")
lesson_1.categories << week_40
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-40/workout-week-40-class-1.jpg"),
  filename: "workout-week-40-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 40 / Class 1"
lesson_1.duration = "27:55"
lesson_1.vimeo_url = "https://vimeo.com/675449981"
lesson_1.save!
