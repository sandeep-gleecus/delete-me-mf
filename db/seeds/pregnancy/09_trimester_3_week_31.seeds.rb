# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 31
week_31 = trimester_3.children.find_or_initialize_by(title: "Week 31")
week_31.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_31.description = "Pregnancy Trimester 3 – Week 31"
week_31.save!

## Week 31 – Lesson 1
lesson_1 = week_31.lessons.find_or_initialize_by(title: "Workout – Week 31 / Class 1")
lesson_1.categories << week_31
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-31/workout-week-31-class-1.jpg"),
  filename: "workout-week-31-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 31 / Class 1"
lesson_1.duration = "28:35"
lesson_1.vimeo_url = "https://vimeo.com/510621998"
lesson_1.save!

## Week 31 – Lesson 2
lesson_2 = week_31.lessons.find_or_initialize_by(title: "Pilates – Week 31 / Class 1")
lesson_2.categories << week_31
lesson_2.user = pilates_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-31/pilates-week-31-class-1.jpg"),
  filename: "pilates-week-31-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 31 / Class 1"
lesson_2.duration = "0:00"
lesson_2.vimeo_url = ""
lesson_2.save!

## Week 31 – Lesson 3
lesson_3 = week_31.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 31 / Session 4")
lesson_3.categories << week_31
lesson_3.user = hypnobirthing
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-31/hypnobirthing-week-31-session-4.jpg"),
  filename: "hypnobirthing-week-31-session-4.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Week 31 / Session 4"
lesson_3.duration = "12:52"
lesson_3.vimeo_url = "https://vimeo.com/685188479"
lesson_3.save!

## Week 31 – Lesson 4
## Expert Advisor – Doula
lesson_4 = experts.children.find_by(title: "Doula").lessons.find_by(title: "Getting baby out part 3 – Doula")
lesson_4.categories << week_31
lesson_4.save!
