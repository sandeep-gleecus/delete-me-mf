# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 20
week_20 = trimester_2.children.find_or_initialize_by(title: "Week 20")
week_20.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_20.description = "Pregnancy Trimester 2 – Week 20"
week_20.save!

## Week 20 – Lesson 1
lesson_1 = week_20.lessons.find_or_initialize_by(title: "Workout – Week 20 / Class 1")
lesson_1.categories << week_20
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-20/workout-week-20-class-1.jpg"),
  filename: "workout-week-20-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 20 / Class 1"
lesson_1.duration = "27:55"
lesson_1.vimeo_url = "https://vimeo.com/675447583"
lesson_1.save!

## Week 20 – Lesson 2
lesson_2 = week_20.lessons.find_or_initialize_by(title: "Yoga – Week 20 / Class 1")
lesson_2.categories << week_20
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-20/yoga-week-20-class-1.jpg"),
  filename: "yoga-week-20-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Yoga with Abbey – Week 20 / Class 1"
lesson_2.duration = "22:42"
lesson_2.vimeo_url = "https://vimeo.com/673594015"
lesson_2.save!

## Week 20 – Lesson 3
lesson_3 = week_20.lessons.find_or_initialize_by(title: "Pilates – Week 20 / Class 1")
lesson_3.categories << week_20
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-20/pilates-week-20-class-1.jpg"),
  filename: "pilates-week-20-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 20 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
