# Relationships
trimester_2 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 2")
experts = Category.find_by(title: "Experts")
shared = Category.find_by(title: "Shared")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Secondary
secondary = trimester_2.children.find_or_initialize_by(title: "Secondary")
secondary.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
secondary.description = "Pregnancy Trimester 2 – Secondary"
secondary.save!

## Secondary – Lesson 1
lesson_1 = secondary.lessons.find_or_initialize_by(title: "Trimester 2 introduction with Michelle")
lesson_1.categories << secondary
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-2/secondary/workout-introduction.jpg"),
  filename: "workout-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 2 – Trimester 2 introduction with Michelle"
lesson_1.duration = "5:27"
lesson_1.vimeo_url = "https://vimeo.com/504546744"
lesson_1.save!

## Secondary – Lesson 2
## Shared – I’m pregnant – what happens when?
lesson_2 = shared.lessons.find_by(title: "I’m pregnant – what happens when?")
lesson_2.categories << secondary
lesson_2.save!

## Secondary – Lesson 3
## Shared – I’m pregnant – what questions will I get asked by my midwife?
lesson_3 = shared.lessons.find_by(title: "I’m pregnant – what questions will I get asked by my midwife?")
lesson_3.categories << secondary
lesson_3.save!

## Secondary – Lesson 4
## Expert Advisor – Meditation
lesson_4 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Affirmation meditation")
lesson_4.categories << secondary
lesson_4.save!

## Secondary – Lesson 5
## Shared – Morning sickness
lesson_5 = shared.lessons.find_by(title: "Morning sickness")
lesson_5.categories << secondary
lesson_5.save!

## Secondary – Lesson 6
## Expert Advisor – Meditation
lesson_6 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Pregnancy meditation")
lesson_6.categories << secondary
lesson_6.save!

## Secondary – Lesson 7
## Expert Advisor – Pelvic Health
lesson_7 = experts.children.find_by(title: "Pelvic Health").lessons.find_by(title: "During pregnancy")
lesson_7.categories << secondary
lesson_7.save!

## Secondary – Lesson 8
## Shared – Foods to eat and not to eat during pregnancy
lesson_8 = shared.lessons.find_by(title: "How to prepare for C-section")
lesson_8.categories << secondary
lesson_8.save!

## Secondary – Lesson 9
## Shared – Foods to eat and not to eat during pregnancy
lesson_9 = shared.lessons.find_by(title: "Foods to eat and not to eat during pregnancy")
lesson_9.categories << secondary
lesson_9.save!

## Secondary – Lesson 10
## Expert Advisor – Dental Health
lesson_10 = experts.children.find_by(title: "Dental Health").lessons.find_by(title: "Dental health")
lesson_10.categories << secondary
lesson_10.save!

## Secondary – Lesson 11
## Expert Advisor – Breathwork Facilitator
lesson_11 = experts.children.find_by(title: "Breathwork Facilitator").lessons.find_by(title: "Resilience")
lesson_11.categories << secondary
lesson_11.save!

## Secondary – Lesson 12
## Shared – Giving birth – where and how?
lesson_12 = shared.lessons.find_by(title: "Giving birth – where and how?")
lesson_12.categories << secondary
lesson_12.save!

## Secondary – Lesson 13
## Shared – Meals to nourish your body
lesson_13 = shared.lessons.find_by(title: "Meals to nourish your body")
lesson_13.categories << secondary
lesson_13.save!

## Secondary – Lesson 14
## Shared – Physical activity guidelines – pregnant women
lesson_14 = shared.lessons.find_by(title: "Physical activity guidelines – pregnant women")
lesson_14.categories << secondary
lesson_14.save!
