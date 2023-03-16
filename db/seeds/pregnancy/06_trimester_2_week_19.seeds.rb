# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 19
week_19 = trimester_2.children.find_or_initialize_by(title: "Week 19")
week_19.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_19.description = "Pregnancy Trimester 2 – Week 19"
week_19.save!

## Week 19 – Lesson 1
lesson_1 = week_19.lessons.find_or_initialize_by(title: "Workout – Week 19 / Class 1")
lesson_1.categories << week_19
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-19/workout-week-19-class-1.jpg"),
  filename: "workout-week-19-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 19 / Class 1"
lesson_1.duration = "30:04"
lesson_1.vimeo_url = "https://vimeo.com/510352529"
lesson_1.save!

## Week 19 – Lesson 2
lesson_2 = week_19.lessons.find_or_initialize_by(title: "Workout – Week 19 / Class 2")
lesson_2.categories << week_19
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-19/workout-week-19-class-2.jpg"),
  filename: "workout-week-19-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 19 / Class 2"
lesson_2.duration = "29:44"
lesson_2.vimeo_url = "https://vimeo.com/504164850"
lesson_2.save!

## Week 19 – Lesson 3
lesson_3 = week_19.lessons.find_or_initialize_by(title: "Pilates – Week 19 / Class 1")
lesson_3.categories << week_19
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-19/pilates-week-19-class-1.jpg"),
  filename: "pilates-week-19-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 19 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
