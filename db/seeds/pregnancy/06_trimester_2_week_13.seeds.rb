# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 13
week_13 = trimester_2.children.find_or_initialize_by(title: "Week 13")
week_13.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_13.description = "Pregnancy Trimester 2 – Week 13"
week_13.save!

## Week 13 – Lesson 1
lesson_1 = week_13.lessons.find_or_initialize_by(title: "Workout – Week 13 / Class 1")
lesson_1.categories << week_13
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-13/workout-week-13-class-1.jpg"),
  filename: "workout-week-13-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 13 / Class 1"
lesson_1.duration = "27:23"
lesson_1.vimeo_url = "https://vimeo.com/502075761"
lesson_1.save!

## Week 13 – Lesson 2
lesson_2 = week_13.lessons.find_or_initialize_by(title: "Workout – Week 13 / Class 2")
lesson_2.categories << week_13
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-13/workout-week-13-class-2.jpg"),
  filename: "workout-week-13-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 13 / Class 2"
lesson_2.duration = "27:13"
lesson_2.vimeo_url = "https://vimeo.com/502073369"
lesson_2.save!

## Week 13 – Lesson 3
lesson_3 = week_13.lessons.find_or_initialize_by(title: "Pilates – Week 13 / Class 1")
lesson_3.categories << week_13
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-13/pilates-week-13-class-1.jpg"),
  filename: "pilates-week-13-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 13 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
