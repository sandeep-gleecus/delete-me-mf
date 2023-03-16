# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 38
week_38 = trimester_3.children.find_or_initialize_by(title: "Week 38")
week_38.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_38.description = "Pregnancy Trimester 3 – Week 38"
week_38.save!

## Week 38 – Lesson 1
lesson_1 = week_38.lessons.find_or_initialize_by(title: "Workout – Week 38 / Class 1")
lesson_1.categories << week_38
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-38/workout-week-38-class-1.jpg"),
  filename: "workout-week-38-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 38 / Class 1"
lesson_1.duration = "18:54"
lesson_1.vimeo_url = "https://vimeo.com/510840599"
lesson_1.save!

## Week 38 – Lesson 2
lesson_2 = week_38.lessons.find_or_initialize_by(title: "Yoga – Week 38 / Class 1")
lesson_2.categories << week_38
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-38/yoga-week-38-class-1.jpg"),
  filename: "yoga-week-38-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Yoga with Abbey – Week 38 / Class 1"
lesson_2.duration = "22:56"
lesson_2.vimeo_url = "https://vimeo.com/681985962"
lesson_2.save!

## Week 38 – Lesson 3
lesson_3 = week_38.lessons.find_or_initialize_by(title: "Pilates – Week 38 / Class 1")
lesson_3.categories << week_38
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-38/pilates-week-38-class-1.jpg"),
  filename: "pilates-week-38-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 38 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!
