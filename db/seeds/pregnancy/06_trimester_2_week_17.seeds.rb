# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 17
week_17 = trimester_2.children.find_or_initialize_by(title: "Week 17")
week_17.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_17.description = "Pregnancy Trimester 2 – Week 17"
week_17.save!

## Week 17 – Lesson 1
lesson_1 = week_17.lessons.find_or_initialize_by(title: "Workout – Week 17 / Class 1")
lesson_1.categories << week_17
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-17/workout-week-17-class-1.jpg"),
  filename: "workout-week-17-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 17 / Class 1"
lesson_1.duration = "27:14"
lesson_1.vimeo_url = "https://vimeo.com/504159454"
lesson_1.save!

## Week 17 – Lesson 2
lesson_2 = week_17.lessons.find_or_initialize_by(title: "Workout – Week 17 / Class 2")
lesson_2.categories << week_17
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-17/workout-week-17-class-2.jpg"),
  filename: "workout-week-17-class-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 17 / Class 2"
lesson_2.duration = "19:01"
lesson_2.vimeo_url = "https://vimeo.com/504163472"
lesson_2.save!

## Week 17 – Lesson 3
lesson_3 = week_17.lessons.find_or_initialize_by(title: "Pilates – Week 17 / Class 1")
lesson_3.categories << week_17
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-17/pilates-week-17-class-1.jpg"),
  filename: "pilates-week-17-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 17 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
