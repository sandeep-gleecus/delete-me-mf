# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 6
week_6 = trimester_1.children.find_or_initialize_by(title: "Week 6")
week_6.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_6.description = "Pregnancy Trimester 1 – Week 6"
week_6.save!

## Week 6 – Lesson 1
lesson_1 = week_6.lessons.find_or_initialize_by(title: "Workout – Week 6 / Class 1")
lesson_1.categories << week_6
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-6/workout-week-6-class-1.jpg"),
  filename: "workout-week-6-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Workout with Michelle – Week 6 / Class 1"
lesson_1.duration = "19:13"
lesson_1.vimeo_url = "https://vimeo.com/674943653"
lesson_1.save!

## Week 6 – Lesson 2
lesson_2 = week_6.lessons.find_or_initialize_by(title: "Yoga – Week 6 / Class 1")
lesson_2.categories << week_6
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/week-6/yoga-week-6-class-1.jpg"),
  filename: "yoga-week-6-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 1 – Yoga with Abbey – Week 6 / Class 1"
lesson_2.duration = "21:45"
lesson_2.vimeo_url = "https://vimeo.com/649649666"
lesson_2.save!
