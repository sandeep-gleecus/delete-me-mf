# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 30
week_30 = trimester_3.children.find_or_initialize_by(title: "Week 30")
week_30.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_30.description = "Pregnancy Trimester 3 – Week 30"
week_30.save!

## Week 30 – Lesson 1
lesson_1 = week_30.lessons.find_or_initialize_by(title: "Workout – Week 30 / Class 1")
lesson_1.categories << week_30
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-30/workout-week-30-class-1.jpg"),
  filename: "workout-week-30-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 30 / Class 1"
lesson_1.duration = "27:51"
lesson_1.vimeo_url = "https://vimeo.com/510825945"
lesson_1.save!

## Week 30 – Lesson 2
lesson_2 = week_30.lessons.find_or_initialize_by(title: "Yoga – Week 30 / Class 1")
lesson_2.categories << week_30
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-30/yoga-week-30-class-1.jpg"),
  filename: "yoga-week-30-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Yoga with Abbey – Week 30 / Class 1"
lesson_2.duration = "23:02"
lesson_2.vimeo_url = "https://vimeo.com/646834033"
lesson_2.save!

## Week 30 – Lesson 3
lesson_3 = week_30.lessons.find_or_initialize_by(title: "Pilates – Week 30 / Class 1")
lesson_3.categories << week_30
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-30/pilates-week-30-class-1.jpg"),
  filename: "pilates-week-30-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 30 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!

## Week 30 – Lesson 4
lesson_4 = week_30.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 30 / Session 3")
lesson_4.categories << week_30
lesson_4.user = hypnobirthing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-30/hypnobirthing-week-30-session-3.jpg"),
  filename: "hypnobirthing-week-30-session-3.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Week 30 / Session 1"
lesson_4.duration = "10:57"
lesson_4.vimeo_url = "https://vimeo.com/685187723"
lesson_4.save!

## Week 30 – Lesson 5
## Expert Advisor – Doula
lesson_5 = experts.children.find_by(title: "Doula").lessons.find_by(title: "Getting baby out part 1 – Doula")
lesson_5.categories << week_30
lesson_5.save!

## Week 30 – Lesson 6
## Expert Advisor – Doula
lesson_6 = experts.children.find_by(title: "Doula").lessons.find_by(title: "Getting baby out part 2 – Doula")
lesson_6.categories << week_30
lesson_6.save!
