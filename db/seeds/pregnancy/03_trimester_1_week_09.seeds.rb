# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 9
week_9 = trimester_1.children.find_or_initialize_by(title: "Week 9")
week_9.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_9.description = "Pregnancy Trimester 1 – Week 9"
week_9.save!

## Week 9 – Lesson 1
lesson_1 = week_9.lessons.find_or_initialize_by(title: "Workout – Week 9 / Class 1")
lesson_1.categories << week_9
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-9/workout-week-9-class-1.jpg"),
  filename: "workout-week-9-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 9 / Class 1"
lesson_1.duration = "27:55"
lesson_1.vimeo_url = "https://vimeo.com/675447549"
lesson_1.save!

## Week 9 – Lesson 2
lesson_2 = week_9.lessons.find_or_initialize_by(title: "Workout – Week 9 / Class 2")
lesson_2.categories << week_9
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-9/workout-week-9-class-2.jpg"),
  filename: "workout-week-9-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 9 / Class 2"
lesson_2.duration = "31:44"
lesson_2.vimeo_url = "https://vimeo.com/501920834"
lesson_2.save!
