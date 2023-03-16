# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 16
week_16 = trimester_2.children.find_or_initialize_by(title: "Week 16")
week_16.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_16.description = "Pregnancy Trimester 2 – Week 16"
week_16.save!

## Week 16 – Lesson 1
lesson_1 = week_16.lessons.find_or_initialize_by(title: "Workout – Week 16 / Class 1")
lesson_1.categories << week_16
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-16/workout-week-16-class-1.jpg"),
  filename: "workout-week-16-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Workout with Michelle – Week 16 / Class 1"
lesson_1.duration = "32:28"
lesson_1.vimeo_url = "https://vimeo.com/504153024"
lesson_1.save!

## Week 16 – Lesson 2
lesson_2 = week_16.lessons.find_or_initialize_by(title: "Yoga – Week 16 / Class 1")
lesson_2.categories << week_16
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-16/yoga-week-16-class-1.jpg"),
  filename: "yoga-week-16-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 2 – Yoga with Abbey – Week 16 / Class 1"
lesson_2.duration = "22:18"
lesson_2.vimeo_url = "https://vimeo.com/646830901"
lesson_2.save!

# Week 16 – Lesson 3
lesson_3 = week_16.lessons.find_or_initialize_by(title: "Pilates – Week 16 / Class 1")
lesson_3.categories << week_16
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/week-16/pilates-week-16-class-1.jpg"),
  filename: "pilates-week-16-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 2 – Pilates with Jemma – Week 16 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
