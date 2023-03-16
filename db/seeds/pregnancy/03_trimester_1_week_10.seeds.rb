# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 10
week_10 = trimester_1.children.find_or_initialize_by(title: "Week 10")
week_10.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_10.description = "Pregnancy Trimester 1 – Week 10"
week_10.save!

## Week 10 – Lesson 1
lesson_1 = week_10.lessons.find_or_initialize_by(title: "Workout – Week 10 / Class 1")
lesson_1.categories << week_10
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-10/workout-week-10-class-1.jpg"),
  filename: "workout-week-10-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 10 / Class 1"
lesson_1.duration = "22:52"
lesson_1.vimeo_url = "https://vimeo.com/501941133"
lesson_1.save!

## Week 10 – Lesson 2
lesson_2 = week_10.lessons.find_or_initialize_by(title: "Yoga – Week 10 / Class 1")
lesson_2.categories << week_10
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-10/yoga-week-10-class-1.jpg"),
  filename: "yoga-week-10-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Yoga with Abbey – Week 10 / Class 1"
lesson_2.duration = "22:42"
lesson_2.vimeo_url = "https://vimeo.com/673588751"
lesson_2.save!
