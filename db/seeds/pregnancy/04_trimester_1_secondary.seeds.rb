# Relationships
trimester_1 = Category.find_by(title: "Pregnancy").children.find_by(title: "Trimester 1")
experts = Category.find_by(title: "Experts")
shared = Category.find_by(title: "Shared")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Secondary
secondary = trimester_1.children.find_or_initialize_by(title: "Secondary")
secondary.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
secondary.description = "Pregnancy Trimester 1 – Secondary"
secondary.save!

## Secondary – Lesson 1
lesson_1 = secondary.lessons.find_or_initialize_by(title: "Trimester 1 introduction with Michelle")
lesson_1.categories << secondary
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/workout-introduction.jpg"),
  filename: "workout-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 1 – Trimester 1 introduction with Michelle"
lesson_1.duration = "4:26"
lesson_1.vimeo_url = "https://vimeo.com/501920259"
lesson_1.save!

## Secondary – Lesson 2
## Expert Advisor – Meditation
lesson_2 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Pregnancy meditation")
lesson_2.categories << secondary
lesson_2.save!

## Secondary – Lesson 3
lesson_3 = secondary.lessons.find_or_initialize_by(title: "Yoga in Trimester 1")
lesson_3.categories << secondary
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/yoga-in-trimester-1.jpg"),
  filename: "yoga-in-trimester-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 1 – Yoga in Trimester 1"
# lesson_3.href = "#{Rails.configuration.website_address}#{Rails.application.routes.url_helpers.dashboard_post_path(Post.find_by(title: "First Trimester Yoga: Is Prenatal Yoga Safe?").id)}"
lesson_3.save!

## Secondary – Lesson 4
## Shared – Meals to nourish your body
lesson_4 = shared.lessons.find_by(title: "Meals to nourish your body")
lesson_4.categories << secondary
lesson_4.save!

## Secondary – Lesson 5
## Expert Advisor – Meditation
lesson_5 = experts.children.find_by(title: "Meditation").lessons.find_by(title: "Gratitude meditation")
lesson_5.categories << secondary
lesson_5.save!

## Secondary – Lesson 6
lesson_6 = secondary.lessons.find_or_initialize_by(title: "Pelvic floor exercises in pregnancy & beyond")
lesson_6.categories << secondary
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/pelvic-floor-exercises-in-pregnancy-beyond.jpg"),
  filename: "pelvic-floor-exercises-in-pregnancy-beyond.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Pregnancy Trimester 1 – Pelvic floor exercises in pregnancy & beyond"
# lesson_6.href = "#{Rails.configuration.website_address}#{Rails.application.routes.url_helpers.dashboard_post_path(Post.find_by(title: "Pelvic floor exercises in pregnancy & beyond").id)}"
lesson_6.save!

## Secondary – Lesson 7
lesson_7 = secondary.lessons.find_or_initialize_by(title: "What do you do if you think you’re pregnant?")
lesson_7.categories << trimester_1
lesson_7.user = michelle
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/what-to-do-if-pregnant.jpg"),
  filename: "what-to-do-if-pregnant.jpg",
  content_type: "image/jpeg"
)
lesson_7.resource.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/what-to-do-if-pregnant.pdf"),
  filename: "what-to-do-if-pregnant.pdf",
  content_type: "application/pdf"
)
lesson_7.description = "Pregnancy Trimester 1 – What do you do if you think you’re pregnant?"
lesson_7.save!

## Secondary – Lesson 8
## Shared – Morning sickness
lesson_8 = shared.lessons.find_by(title: "Morning sickness")
lesson_8.categories << secondary
lesson_8.save!

## Secondary – Lesson 9
## Expert Advisor – Pelvic Health
lesson_9 = experts.children.find_by(title: "Pelvic Health").lessons.find_by(title: "During pregnancy")
lesson_9.categories << secondary
lesson_9.save!

## Secondary – Lesson 10
## Expert Advisor – Breathwork Facilitator
lesson_10 = experts.children.find_by(title: "Breathwork Facilitator").lessons.find_by(title: "Calm")
lesson_10.categories << secondary
lesson_10.save!

## Secondary – Lesson 11
lesson_11 = secondary.lessons.find_or_initialize_by(title: "How to tell work you’re pregnant")
lesson_11.categories << trimester_1
lesson_11.user = michelle
lesson_11.lesson_type = :mind
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/how-to-tell-work.jpg"),
  filename: "how-to-tell-work.jpg",
  content_type: "image/jpeg"
)
lesson_11.resource.attach(
  io: File.open("app/assets/images/seeds/pregnancy/trimester-1/secondary/how-to-tell-work.pdf"),
  filename: "how-to-tell-work.pdf",
  content_type: "application/pdf"
)
lesson_11.description = "Pregnancy Trimester 1 – How to tell work you’re pregnant"
lesson_11.save!

## Secondary – Lesson 12
## Shared – I’m pregnant – what happens when?
lesson_12 = shared.lessons.find_by(title: "I’m pregnant – what happens when?")
lesson_12.categories << secondary
lesson_12.save!

## Secondary – Lesson 12
## Shared – Foods to eat and not to eat during pregnancy
lesson_12 = shared.lessons.find_by(title: "Foods to eat and not to eat during pregnancy")
lesson_12.categories << secondary
lesson_12.save!

## Secondary – Lesson 13
## Shared – I’m pregnant – what questions will I get asked by my midwife?
lesson_13 = shared.lessons.find_by(title: "I’m pregnant – what questions will I get asked by my midwife?")
lesson_13.categories << secondary
lesson_13.save!

## Secondary – Lesson 14
## Shared – Physical activity guidelines – pregnant women
lesson_14 = shared.lessons.find_by(title: "Physical activity guidelines – pregnant women")
lesson_14.categories << secondary
lesson_14.save!
