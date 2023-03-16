# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 28
week_28 = trimester_3.children.find_or_initialize_by(title: "Week 28")
week_28.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_28.description = "Pregnancy Trimester 3 – Week 28"
week_28.save!

## Week 28 – Lesson 1
lesson_1 = week_28.lessons.find_or_initialize_by(title: "Workout – Week 28 / Class 1")
lesson_1.categories << week_28
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-28/workout-week-28-class-1.jpg"),
  filename: "workout-week-28-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 28 / Class 1"
lesson_1.duration = "30:04"
lesson_1.vimeo_url = "https://vimeo.com/513820685"
lesson_1.save!

## Week 28 – Lesson 2
lesson_2 = week_28.lessons.find_or_initialize_by(title: "Yoga – Week 28 / Class 1")
lesson_2.categories << week_28
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-28/yoga-week-28-class-1.jpg"),
  filename: "yoga-week-28-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Yoga with Abbey – Week 28 / Class 1"
lesson_2.duration = "22:27"
lesson_2.vimeo_url = "https://vimeo.com/643693642"
lesson_2.save!

## Week 28 – Lesson 3
lesson_3 = week_28.lessons.find_or_initialize_by(title: "Pilates – Week 28 / Class 1")
lesson_3.categories << week_28
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-28/pilates-week-28-class-1.jpg"),
  filename: "pilates-week-28-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 28 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!

## Week 28 – Lesson 4
lesson_4 = week_28.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 28 / Session 1")
lesson_4.categories << week_28
lesson_4.user = hypnobirthing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-28/hypnobirthing-week-28-session-1.jpg"),
  filename: "hypnobirthing-week-28-session-1.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Week 28 / Session 1"
lesson_4.duration = "9:47"
lesson_4.vimeo_url = "https://vimeo.com/685185133"
lesson_4.save!

## Week 28 – Lesson 5
## Expert Advisor – Doula
lesson_5 = experts.children.find_by(title: "Doula").lessons.find_by(title: "Labour stages 1–3 – Doula")
lesson_5.categories << week_28
lesson_5.save!

## Week 28 – Lesson 6
## Expert Advisor – Midwife
lesson_6 = experts.children.find_by(title: "Midwife").lessons.find_by(title: "Preparing for birth – Midwife")
lesson_6.categories << week_28
lesson_6.save!
