# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 37
week_37 = trimester_3.children.find_or_initialize_by(title: "Week 37")
week_37.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_37.description = "Pregnancy Trimester 3 – Week 37"
week_37.save!

## Week 37 – Lesson 1
lesson_1 = week_37.lessons.find_or_initialize_by(title: "Workout – Week 37 / Class 1")
lesson_1.categories << week_37
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-37/workout-week-37-class-1.jpg"),
  filename: "workout-week-37-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 37 / Class 1"
lesson_1.duration = "35:02"
lesson_1.vimeo_url = "https://vimeo.com/511123848"
lesson_1.save!

## Week 37 – Lesson 2
lesson_2 = week_37.lessons.find_or_initialize_by(title: "Pilates – Week 37 / Class 1")
lesson_2.categories << week_37
lesson_2.user = pilates_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-37/pilates-week-37-class-1.jpg"),
  filename: "pilates-week-37-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 37 Class 1"
lesson_2.duration = "0:00"
lesson_2.vimeo_url = ""
lesson_2.save!
