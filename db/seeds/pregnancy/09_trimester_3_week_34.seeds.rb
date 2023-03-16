# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 34
week_34 = trimester_3.children.find_or_initialize_by(title: "Week 34")
week_34.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_34.description = "Pregnancy Trimester 3 – Week 34"
week_34.save!

## Week 34 – Lesson 1
lesson_1 = week_34.lessons.find_or_initialize_by(title: "Workout – Week 34 / Class 1")
lesson_1.categories << week_34
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-34/workout-week-34-class-1.jpg"),
  filename: "workout-week-34-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 34 / Class 1"
lesson_1.duration = "28:40"
lesson_1.vimeo_url = "https://vimeo.com/513829506"
lesson_1.save!

## Week 34 – Lesson 2
lesson_2 = week_34.lessons.find_or_initialize_by(title: "Yoga – Week 34 / Class 1")
lesson_2.categories << week_34
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-34/yoga-week-34-class-1.jpg"),
  filename: "yoga-week-34-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Yoga with Abbey – Week 34 / Class 1"
lesson_2.duration = "22:42"
lesson_2.vimeo_url = "https://vimeo.com/673599446"
lesson_2.save!

## Week 34 – Lesson 3
lesson_3 = week_34.lessons.find_or_initialize_by(title: "Pilates – Week 34 / Class 1")
lesson_3.categories << week_34
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-34/pilates-week-34-class-1.jpg"),
  filename: "pilates-week-34-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 34 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!

## Week 34 – Lesson 4
lesson_4 = week_34.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 34 / Session 7")
lesson_4.categories << week_34
lesson_4.user = hypnobirthing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-34/hypnobirthing-week-34-session-7.jpg"),
  filename: "hypnobirthing-week-34-session-7.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Week 34 / Session 7"
lesson_4.duration = "2:09"
lesson_4.vimeo_url = "https://vimeo.com/685193858"
lesson_4.save!

## Week 34 – Lesson 5
## Expert Advisor – Doula
lesson_5 = experts.children.find_by(title: "Doula").lessons.find_by(title: "Massage during labour – Doula")
lesson_5.categories << week_34
lesson_5.save!
