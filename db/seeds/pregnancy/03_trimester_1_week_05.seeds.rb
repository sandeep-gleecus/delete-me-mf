# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 5
week_5 = trimester_1.children.find_or_initialize_by(title: "Week 5")
week_5.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_5.description = "Pregnancy Trimester 1 – Week 5"
week_5.save!

## Week 5 – Lesson 1
lesson_1 = week_5.lessons.find_or_initialize_by(title: "Workout – Week 5 / Class 1")
lesson_1.categories << week_5
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-5/workout-week-5-class-1.jpg"),
  filename: "workout-week-5-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 5 / Class 1"
lesson_1.duration = "28:16"
lesson_1.vimeo_url = "https://vimeo.com/501946256"
lesson_1.save!

## Week 5 – Lesson 2
lesson_2 = week_5.lessons.find_or_initialize_by(title: "Workout – Week 5 / Class 2")
lesson_2.categories << week_5
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-5/workout-week-5-class-2.jpg"),
  filename: "workout-week-5-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 5 / Class 2"
lesson_2.duration = "21:15"
lesson_2.vimeo_url = "https://vimeo.com/501843856"
lesson_2.save!
