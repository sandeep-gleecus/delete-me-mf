# Relationships
experts = Category.find_by(title: "Experts")
user_doula = User.find_by(email: "doula@motherfit.co.uk")

# Doula
doula = experts.children.find_or_initialize_by(title: "Doula")
doula.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
doula.resource.attach(
  io: File.open("app/assets/images/seeds/experts/doula/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
doula.category_type = :mind
doula.description = "Doula"
doula.save!

## Lesson 1
lesson_1 = doula.lessons.find_or_initialize_by(title: "Breathing for birth – Doula")
lesson_1.categories << doula
lesson_1.user = user_doula
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/breathing-for-birth.jpg"),
  filename: "breathing-for-birth.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Antenatal – Breating for birth – Doula"
lesson_1.duration = "3:24"
lesson_1.vimeo_url = "https://vimeo.com/544344137"
lesson_1.save!

## Lesson 2
lesson_2 = doula.lessons.find_or_initialize_by(title: "Labour stages 1–3 – Doula")
lesson_2.categories << doula
lesson_2.user = user_doula
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/labour-stages-1-3.jpg"),
  filename: "labour-stages-1-3.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Antenatal – Labour stages 1–3 – Doula"
lesson_2.duration = "6:42"
lesson_2.vimeo_url = "https://vimeo.com/544342647"
lesson_2.save!

## Lesson 3
lesson_3 = doula.lessons.find_or_initialize_by(title: "Getting baby out part 1 – Doula")
lesson_3.categories << doula
lesson_3.user = user_doula
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/getting-baby-out-part-1.jpg"),
  filename: "getting-baby-out-part-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Antenatal – Getting baby out part 1 – Doula"
lesson_3.duration = "1:35"
lesson_3.vimeo_url = "https://vimeo.com/544342278"
lesson_3.save!

## Lesson 4
lesson_4 = doula.lessons.find_or_initialize_by(title: "Getting baby out part 2 – Doula")
lesson_4.categories << doula
lesson_4.user = user_doula
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/getting-baby-out-part-2.jpg"),
  filename: "getting-baby-out-part-2.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Antenatal – Getting baby out part 2 – Doula"
lesson_4.duration = "0:55"
lesson_4.vimeo_url = "https://vimeo.com/544342103"
lesson_4.save!

## Lesson 5
lesson_5 = doula.lessons.find_or_initialize_by(title: "Getting baby out part 3 – Doula")
lesson_5.categories << doula
lesson_5.user = user_doula
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/getting-baby-out-part-3.jpg"),
  filename: "getting-baby-out-part-3.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Pregnancy Trimester 3 – Antental – Getting baby out part 3 – Doula"
lesson_5.duration = "0:51"
lesson_5.vimeo_url = "https://vimeo.com/544341907"
lesson_5.save!

## Lesson 6
lesson_6 = doula.lessons.find_or_initialize_by(title: "Birth partner doula tips – Doula")
lesson_6.categories << doula
lesson_6.user = user_doula
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/birth-partner-doula-tips.jpg"),
  filename: "birth-partner-doula-tips.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Pregnancy Trimester 3 – Antenatal – Birthing partner doula tips – Doula"
lesson_6.duration = "6:14"
lesson_6.vimeo_url = "https://vimeo.com/544340631"
lesson_6.save!

## Lesson 7
lesson_7 = doula.lessons.find_or_initialize_by(title: "Relaxation short – Doula")
lesson_7.categories << doula
lesson_7.user = user_doula
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/relaxation-short.jpg"),
  filename: "relaxation-short.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Pregnancy Trimester 3 – Antenatal – Relaxation Short – Doula"
lesson_7.duration = "4:49"
lesson_7.vimeo_url = "https://vimeo.com/544443192"
lesson_7.save!

## Lesson 8
lesson_8 = doula.lessons.find_or_initialize_by(title: "Massage during labour – Doula")
lesson_8.categories << doula
lesson_8.user = user_doula
lesson_8.lesson_type = :mind
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/doula/massage-during-labour.jpg"),
  filename: "massage-during-labour.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Pregnancy Trimester 3 – Antenatal – Massage during labour – Doula"
lesson_8.duration = "1:20"
lesson_8.vimeo_url = "https://vimeo.com/544340348"
lesson_8.save!
