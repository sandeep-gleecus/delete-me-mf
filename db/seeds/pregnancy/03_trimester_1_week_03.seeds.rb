# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 3
week_3 = trimester_1.children.find_or_initialize_by(title: "Week 3")
week_3.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_3.description = "Pregnancy Trimester 1 – Week 3"
week_3.save!

## Week 3 – Lesson 1
lesson_1 = week_3.lessons.find_or_initialize_by(title: "Workout – Week 3 / Class 1")
lesson_1.categories << week_3
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-3/workout-week-3-class-1.jpg"),
  filename: "workout-week-3-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 3 / Class 1"
lesson_1.duration = "29:33"
lesson_1.vimeo_url = "https://vimeo.com/501929199"
lesson_1.save!

## Week 3 – Lesson 2
lesson_2 = week_3.lessons.find_or_initialize_by(title: "Workout – Week 3 / Class 2")
lesson_2.categories << week_3
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-3/workout-week-3-class-2.jpg"),
  filename: "workout-week-3-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 3 / Class 2"
lesson_2.duration = "36:35"
lesson_2.vimeo_url = "https://vimeo.com/501932633"
lesson_2.save!
