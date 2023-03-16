# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 18
week_18 = trimester_2.children.find_or_initialize_by(title: "Week 18")
week_18.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_18.description = "Pregnancy Trimester 2 – Week 18"
week_18.save!

## Week 18 – Lesson 1
lesson_1 = week_18.lessons.find_or_initialize_by(title: "Workout – Week 18 / Class 1")
lesson_1.categories << week_18
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-18/workout-week-18-class-1.jpg"),
  filename: "workout-week-18-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 18 / Class 1"
lesson_1.duration = "29:31"
lesson_1.vimeo_url = "https://vimeo.com/504155387"
lesson_1.save!

## Week 18 – Lesson 2
lesson_2 = week_18.lessons.find_or_initialize_by(title: "Yoga – Week 18 / Class 1")
lesson_2.categories << week_18
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-18/yoga-week-18-class-1.jpg"),
  filename: "yoga-week-18-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Yoga with Abbey – Week 18 / Class 1"
lesson_2.duration = "23:22"
lesson_2.vimeo_url = "https://vimeo.com/649652475"
lesson_2.save!

# Week 18 – Lesson 3
lesson_3 = week_18.lessons.find_or_initialize_by(title: "Pilates – Week 18 / Class 1")
lesson_3.categories << week_18
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-18/pilates-week-18-class-1.jpg"),
  filename: "pilates-week-18-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 18 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
