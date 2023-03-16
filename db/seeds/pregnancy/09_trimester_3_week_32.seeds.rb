# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 32
week_32 = trimester_3.children.find_or_initialize_by(title: "Week 32")
week_32.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_32.description = "Pregnancy Trimester 3 – Week 32"
week_32.save!

## Week 32 – Lesson 1
lesson_1 = week_32.lessons.find_or_initialize_by(title: "Workout – Week 32 / Class 1")
lesson_1.categories << week_32
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-32/workout-week-32-class-1.jpg"),
  filename: "workout-week-32-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 32 / Class 1"
lesson_1.duration = "19:27"
lesson_1.vimeo_url = "https://vimeo.com/510838181"
lesson_1.save!

## Week 32 – Lesson 2
lesson_2 = week_32.lessons.find_or_initialize_by(title: "Yoga – Week 32 / Class 1")
lesson_2.categories << week_32
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-32/yoga-week-32-class-1.jpg"),
  filename: "yoga-week-32-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Yoga with Abbey – Week 32 / Class 1"
lesson_2.duration = "20:09"
lesson_2.vimeo_url = "https://vimeo.com/649655584"
lesson_2.save!

## Week 32 – Lesson 3
lesson_3 = week_32.lessons.find_or_initialize_by(title: "Pilates – Week 32 / Class 1")
lesson_3.categories << week_32
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-32/pilates-week-32-class-1.jpg"),
  filename: "pilates-week-32-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 32 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!

## Week 32 – Lesson 4
lesson_4 = week_32.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 32 / Session 5")
lesson_4.categories << week_32
lesson_4.user = hypnobirthing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-32/hypnobirthing-week-32-session-5.jpg"),
  filename: "hypnobirthing-week-32-session-5.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Week 32 / Session 5"
lesson_4.duration = "12:46"
lesson_4.vimeo_url = "https://vimeo.com/685190437"
lesson_4.save!

## Week 32 – Lesson 5
## Expert Advisor – Doula
lesson_5 = experts.children.find_by(title: "Doula").lessons.find_by(title: "Birth partner doula tips – Doula")
lesson_5.categories << week_32
lesson_5.save!
