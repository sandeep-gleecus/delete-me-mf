# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 35
week_35 = trimester_3.children.find_or_initialize_by(title: "Week 35")
week_35.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_35.description = "Pregnancy Trimester 3 – Week 35"
week_35.save!

## Week 35 – Lesson 1
lesson_1 = week_35.lessons.find_or_initialize_by(title: "Workout – Week 35 / Class 1")
lesson_1.categories << week_35
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-35/workout-week-35-class-1.jpg"),
  filename: "workout-week-35-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 35 / Class 1"
lesson_1.duration = "33:04"
lesson_1.vimeo_url = "https://vimeo.com/672893271"
lesson_1.save!

## Week 35 – Lesson 2
lesson_2 = week_35.lessons.find_or_initialize_by(title: "Pilates – Week 35 / Class 1")
lesson_2.categories << week_35
lesson_2.user = pilates_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-35/pilates-week-35-class-1.jpg"),
  filename: "pilates-week-35-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 35 / Class 1"
lesson_2.duration = "0:00"
lesson_2.vimeo_url = ""
lesson_2.save!

## Week 35 – Lesson 3
## Expert Advisor – Midwife
lesson_3 = experts.children.find_by(title: "Midwife").lessons.find_by(title: "Hours/days/weeks after baby is born – Midwife")
lesson_3.categories << week_35
lesson_3.save!
