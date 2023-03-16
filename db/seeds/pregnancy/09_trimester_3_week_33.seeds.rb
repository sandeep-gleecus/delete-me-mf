# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
pilates_instructor = User.find_by(email: "pilates-instructor@motherfit.co.uk")
hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Week 33
week_33 = trimester_3.children.find_or_initialize_by(title: "Week 33")
week_33.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
week_33.description = "Pregnancy Trimester 3 – Week 33"
week_33.save!

## Week 33 – Lesson 1
lesson_1 = week_33.lessons.find_or_initialize_by(title: "Workout – Week 33 / Class 1")
lesson_1.categories << week_33
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-33/workout-week-33-class-1.jpg"),
  filename: "workout-week-33-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Workout with Michelle – Week 33 / Class 1"
lesson_1.duration = "29:00"
lesson_1.vimeo_url = "https://vimeo.com/510619419"
lesson_1.save!

## Week 33 – Lesson 3
lesson_3 = week_33.lessons.find_or_initialize_by(title: "Pilates – Week 33 / Class 1")
lesson_3.categories << week_33
lesson_3.user = pilates_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-33/pilates-week-33-class-1.jpg"),
  filename: "pilates-week-33-class-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Pilates with Jemma – Week 33 / Class 1"
lesson_3.duration = "0:00"
lesson_3.vimeo_url = ""
lesson_3.save!

## Week 33 – Lesson 4
lesson_4 = week_33.lessons.find_or_initialize_by(title: "Hypnobirthing – Week 33 / Session 6")
lesson_4.categories << week_33
lesson_4.user = hypnobirthing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/week-33/hypnobirthing-week-33-session-6.jpg"),
  filename: "hypnobirthing-week-33-session-6.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Week 33 / Session 6"
lesson_4.duration = "6:35"
lesson_4.vimeo_url = "https://vimeo.com/685193307"
lesson_4.save!

## Week 33 – Lesson 5
## Expert Advisor – Lactation Consultant
lesson_5 = experts.children.find_by(title: "Lactation Consultant").lessons.find_by(title: "Breastfeeding part 1")
lesson_5.categories << week_33
lesson_5.save!

## Week 33 – Lesson 6
## Expert Advisor – Lactation Consultant
lesson_6 = experts.children.find_by(title: "Lactation Consultant").lessons.find_by(title: "Breastfeeding part 2")
lesson_6.categories << week_33
lesson_6.save!
