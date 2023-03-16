# Relationships
trimester_3 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 3")
experts = Category.find_by(title: "Experts")
shared = Category.find_by(title: "Shared")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Secondary
secondary = trimester_3.children.find_or_initialize_by(title: "Secondary")
secondary.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
secondary.description = "Pregnancy Trimester 3 – Secondary"
secondary.save!

## Secondary – Lesson 1
lesson_1 = secondary.lessons.find_or_initialize_by(title: "Trimester 3 introduction with Michelle")
lesson_1.categories << secondary
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/workout-introduction.jpg"),
  filename: "workout-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Trimester 3 introduction with Michelle"
lesson_1.duration = "5:26"
lesson_1.vimeo_url = "https://vimeo.com/510619334"
lesson_1.save!

## Secondary – Lesson 2
lesson_2 = secondary.lessons.find_or_initialize_by(title: "Making a birth plan")
lesson_2.categories << secondary
lesson_2.user = michelle
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/making-birth-plan.jpg"),
  filename: "making-birth-plan.jpg",
  content_type: "image/jpeg"
)
lesson_2.resource.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/making-birth-plan.pdf"),
  filename: "making-birth-plan.pdf",
  content_type: "application/pdf"
)
lesson_2.description = "Pregnancy Trimester 3 – Making a birth plan"
lesson_2.save!

## Secondary – Lesson 3
lesson_3 = secondary.lessons.find_or_initialize_by(title: "Hospital bag for Mum, baby and Dad/birthing partner")
lesson_3.categories << secondary
lesson_3.user = michelle
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/hospital-bag.jpg"),
  filename: "hospital-bag.jpg",
  content_type: "image/jpeg"
)
lesson_3.resource.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/hospital-bag.pdf"),
  filename: "hospital-bag.pdf",
  content_type: "application/pdf"
)
lesson_3.description = "Pregnancy Trimester 3 – Hospital bag for Mum, baby and Dad/birthing partner"
lesson_3.save!

## Secondary – Lesson 4
lesson_4 = secondary.lessons.find_or_initialize_by(title: "Home births")
lesson_4.categories << secondary
lesson_4.user = michelle
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/home-births.jpg"),
  filename: "home-births.jpg",
  content_type: "image/jpeg"
)
lesson_4.resource.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-3/secondary/home-births.pdf"),
  filename: "home-births.pdf",
  content_type: "application/pdf"
)
lesson_4.description = "Pregnancy Trimester 3 – Home births"
lesson_4.save!

## Secondary – Lesson 5
## Shared – Foods to eat and not to eat during pregnancy
lesson_5 = shared.lessons.find_by(title: "How to prepare for C-section")
lesson_5.categories << secondary
lesson_5.save!

## Secondary – Lesson 6
## Expert Advisor – Breathwork Facilitator
lesson_6 = experts.children.find_by(title: "Breathwork Facilitator").lessons.find_by(title: "Calm")
lesson_6.categories << secondary
lesson_6.save!

## Secondary – Lesson 7
## Expert Advisor – Breathwork Facilitator
lesson_7 = experts.children.find_by(title: "Breathwork Facilitator").lessons.find_by(title: "Ground and calm SOS")
lesson_7.categories << secondary
lesson_6.save!

## Secondary – Lesson 8
## Expert Advisor – Meditation
lesson_8 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Chakra meditation")
lesson_8.categories << secondary
lesson_8.save!

## Secondary – Lesson 9
## Expert Advisor – Meditation
lesson_9 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Pregnancy meditation")
lesson_9.categories << secondary
lesson_9.save!

## Secondary – Lesson 10
## Expert Advisor – Meditation
lesson_10 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Body scan meditation")
lesson_10.categories << secondary
lesson_10.save!

## Secondary – Lesson 11
## Shared – Meals to nourish your body
lesson_11 = shared.lessons.find_by(title: "Meals to nourish your body")
lesson_11.categories << secondary
lesson_11.save!

## Secondary – Lesson 12
## Shared – Physical activity guidelines – pregnant women
lesson_12 = shared.lessons.find_by(title: "Giving birth – where and how?")
lesson_12.categories << secondary
lesson_12.save!

## Secondary – Lesson 13
## Shared – Physical activity guidelines – pregnant women
lesson_13 = shared.lessons.find_by(title: "Physical activity guidelines – pregnant women")
lesson_13.categories << secondary
lesson_13.save!
