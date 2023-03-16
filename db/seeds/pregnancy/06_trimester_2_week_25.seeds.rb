# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 25
week_25 = trimester_2.children.find_or_initialize_by(title: "Week 25")
week_25.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_25.description = "Pregnancy Trimester 2 – Week 25"
week_25.save!

## Week 25 – Lesson 1
lesson_1 = week_25.lessons.find_or_initialize_by(title: "Workout – Week 25 / Class 1")
lesson_1.categories << week_25
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-25/workout-week-25-class-1.jpg"),
  filename: "workout-week-25-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 25 / Class 1"
lesson_1.duration = "31:58"
lesson_1.vimeo_url = "https://vimeo.com/681052933"
lesson_1.save!

## Week 25 – Lesson 2
lesson_2 = week_25.lessons.find_or_initialize_by(title: "Workout – Week 25 / Class 2")
lesson_2.categories << week_25
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-25/workout-week-25-class-2.jpg"),
  filename: "workout-week-25-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 25 / Class 2"
lesson_2.duration = "32:10"
lesson_2.vimeo_url = "https://vimeo.com/683200029"
lesson_2.save!

## Week 25 – Lesson 3
lesson_3 = week_25.lessons.find_or_initialize_by(title: "Pilates – Week 25 / Class 1")
lesson_3.categories << week_25
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-25/pilates-week-25-class-1.jpg"),
  filename: "pilates-week-25-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 25 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
