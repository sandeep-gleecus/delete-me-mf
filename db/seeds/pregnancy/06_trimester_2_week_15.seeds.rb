# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 15
week_15 = trimester_2.children.find_or_initialize_by(title: "Week 15")
week_15.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_15.description = "Pregnancy Trimester 2 – Week 15"
week_15.save!

## Week 15 – Lesson 1
lesson_1 = week_15.lessons.find_or_initialize_by(title: "Workout – Week 15 / Class 1")
lesson_1.categories << week_15
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-15/workout-week-15-class-1.jpg"),
  filename: "workout-week-15-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 15 / Class 1"
lesson_1.duration = "30:19"
lesson_1.vimeo_url = "https://vimeo.com/504161324"
lesson_1.save!

## Week 15 – Lesson 2
lesson_2 = week_15.lessons.find_or_initialize_by(title: "Workout – Week 15 / Class 2")
lesson_2.categories << week_15
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-15/workout-week-15-class-2.jpg"),
  filename: "workout-week-15-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 15 / Class 2"
lesson_2.duration = "26:06"
lesson_2.vimeo_url = "https://vimeo.com/504157634"
lesson_2.save!

## Week 15 – Lesson 3
lesson_3 = week_15.lessons.find_or_initialize_by(title: "Pilates – Week 15 / Class 1")
lesson_3.categories << week_15
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-15/pilates-week-15-class-1.jpg"),
  filename: "pilates-week-15-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 15 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
