# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 11
week_11 = trimester_1.children.find_or_initialize_by(title: "Week 11")
week_11.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_11.description = "Pregnancy Trimester 1 – Week 11"
week_11.save!

## Week 11 – Lesson 1
lesson_1 = week_11.lessons.find_or_initialize_by(title: "Workout – Week 11 / Class 1")
lesson_1.categories << week_11
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-11/workout-week-11-class-1.jpg"),
  filename: "workout-week-11-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 11 / Class 1"
lesson_1.duration = "26:27"
lesson_1.vimeo_url = "https://vimeo.com/501849504"
lesson_1.save!

## Week 11 – Lesson 2
lesson_2 = week_11.lessons.find_or_initialize_by(title: "Workout – Week 11 / Class 2")
lesson_2.categories << week_11
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-11/workout-week-11-class-2.jpg"),
  filename: "workout-week-11-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 11 / Class 2"
lesson_2.duration = "25:35"
lesson_2.vimeo_url = "https://vimeo.com/671949332"
lesson_2.save!
