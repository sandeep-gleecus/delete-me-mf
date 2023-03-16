# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")

# Week 36
week_36 = trimester_3.children.find_or_initialize_by(title: "Week 36")
week_36.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_36.description = "Pregnancy Trimester 3 – Week 36"
week_36.save!

## Week 36 – Lesson 1
lesson_1 = week_36.lessons.find_or_initialize_by(title: "Workout – Week 36 / Class 1")
lesson_1.categories << week_36
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-36/workout-week-36-class-1.jpg"),
  filename: "workout-week-36-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 36 / Class 1"
lesson_1.duration = "37:34"
lesson_1.vimeo_url = "https://vimeo.com/539765409"
lesson_1.save!

## Week 36 – Lesson 2
lesson_2 = week_36.lessons.find_or_initialize_by(title: "Yoga – Week 36 / Class 1")
lesson_2.categories << week_36
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-36/yoga-week-36-class-1.jpg"),
  filename: "yoga-week-36-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Yoga with Abbey – Week 36 / Class 1"
lesson_2.duration = "10:10"
lesson_2.vimeo_url = "https://vimeo.com/673638910"
lesson_2.save!

## Week 36 – Lesson 3
lesson_3 = week_36.lessons.find_or_initialize_by(title: "Pilates – Week 36 / Class 1")
lesson_3.categories << week_36
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-36/pilates-week-36-class-1.jpg"),
  filename: "pilates-week-36-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 36 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!

## Week 36 – Lesson 4
## Expert Advisor – Sleep Consultant
lesson_4 = experts.children.find_by(title: "Sleep Consultant").lessons.find_by(title: "1st few days")
lesson_4.categories << week_36
lesson_4.save!
