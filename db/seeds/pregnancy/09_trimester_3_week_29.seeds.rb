# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 29
week_29 = trimester_3.children.find_or_initialize_by(title: "Week 29")
week_29.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_29.description = "Pregnancy Trimester 3 – Week 29"
week_29.save!

## Week 29 – Lesson 1
lesson_1 = week_29.lessons.find_or_initialize_by(title: "Workout – Week 29 / Class 1")
lesson_1.categories << week_29
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-29/workout-week-29-class-1.jpg"),
  filename: "workout-week-29-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 29 / Class 1"
lesson_1.duration = "29:06"
lesson_1.vimeo_url = "https://vimeo.com/510620895"
lesson_1.save!

## Week 29 – Lesson 2
lesson_2 = week_29.lessons.find_or_initialize_by(title: "Pilates – Week 29 / Class 2")
lesson_2.categories << week_29
lesson_2.user = pilates_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-29/pilates-week-29-class-1.jpg"),
  filename: "pilates-week-29-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 29 Class 1"
lesson_2.duration = "0:00"
lesson_2.vimeo_url = ""
lesson_2.save!

## Week 29 – Lesson 3
lesson_3 = week_29.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 29 / Session 2")
lesson_3.categories << week_29
lesson_3.user = hypnobirthing
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-29/hypnobirthing-week-29-session-2.jpg"),
  filename: "hypnobirthing-week-29-session-2.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Antental – Hypnobirthing with Tamara – Week 29 / Session 2"
lesson_3.duration = "10:21"
lesson_3.vimeo_url = "https://vimeo.com/685186976"
lesson_3.save!

## Week 29 – Lesson 4
# Expert Advisor – C-Section Scar Therapist
lesson_4 = experts.children.find_by(title: "C-Section Scar Therapist").lessons.find_by(title: "How to prepare for C-section")
lesson_4.categories << week_29
lesson_4.save!
