# Relationships
postpartum = Category.find_by(title: "Postpartum")
experts = Category.find_by(title: "Experts")
shared = Category.find_by(title: "Shared")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Trimester 4
trimester_4 = postpartum.children.find_or_initialize_by(title: "Trimester 4")
trimester_4.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
trimester_4.category_type = :body
trimester_4.description = "Postpartum Trimester 4"
trimester_4.save!

## Trimester 4 – Lesson 1
lesson_1 = trimester_4.lessons.find_or_initialize_by(title: "Congratulations and Introduction with Michelle")
lesson_1.categories << trimester_4
lesson_1.user = michelle
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/4th-trimester-introduction.jpg"),
  filename: "4th-trimester-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Postpartum Trimester 4 – Support for Mum – Congratulations and Introduction with Michelle"
lesson_1.duration = "0:00"
lesson_1.vimeo_url = ""
lesson_1.save!

## Trimester 4 – Lesson 2
## Shared – Meals to nourish your body
lesson_2 = shared.lessons.find_by(title: "Meals to nourish your body")
lesson_2.categories << trimester_4
lesson_2.save!

## Trimester 4 – Lesson 3
lesson_3 = trimester_4.lessons.find_or_initialize_by(title: "Breastfeeding Advice - Breast or Bottle?")
lesson_3.categories << trimester_4
lesson_3.user = michelle
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/breastfeeding-advice.jpg"),
  filename: "breastfeeding-advice.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Postpartum Trimester 4 – Support for Mum – Breastfeeding Advice - Breast or Bottle?"
# lesson_3.href = "#{Rails.configuration.website_address}#{Rails.application.routes.url_helpers.dashboard_post_path(Post.find_by(title: "Breastfeeding Advice with Lactation Consultant").id)}"
lesson_3.save!

## Trimester 4 – Lesson 4
## Expert Advisor – Lactation Consultant
lesson_4 = experts.children.find_by(title: "Lactation Consultant").lessons.find_by(title: "Breastfeeding part 1")
lesson_4.categories << trimester_4
lesson_4.save!

## Trimester 4 – Lesson 5
## Expert Advisor – Lactation Consultant
lesson_5 = experts.children.find_by(title: "Lactation Consultant").lessons.find_by(title: "Breastfeeding part 2")
lesson_5.categories << trimester_4
lesson_5.save!

## Trimester 4 – Lesson 6
## Expert Advisor – Midwife
lesson_6 = experts.children.find_by(title: "Midwife").lessons.find_by(title: "Hours/days/weeks after baby is born – Midwife")
lesson_6.categories << trimester_4
lesson_6.save!

## Trimester 4 – Lesson 7
## Expert Advisor – C-Section Scar Therapist
lesson_7 = experts.children.find_by(title: "C-Section Scar Therapist").lessons.find_by(title: "Recovery after your C-section")
lesson_7.categories << trimester_4
lesson_7.save!

## Trimester 4 – Lesson 8
## Expert Advisor – Pelvic Health
lesson_8 = experts.children.find_by(title: "Pelvic Health").lessons.find_by(title: "After baby is born")
lesson_8.categories << trimester_4
lesson_8.save!

## Trimester 4 – Lesson 9
lesson_9 = trimester_4.lessons.find_or_initialize_by(title: "Sex and contraseption after birth")
lesson_9.categories << trimester_4
lesson_9.user = michelle
lesson_9.lesson_type = :mind
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/sex-contraception-after-birth.jpg"),
  filename: "sex-contraception-after-birth.jpg",
  content_type: "image/jpeg"
)
lesson_9.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/sex-contraception-after-birth.pdf"),
  filename: "sex-contraception-after-birth.pdf",
  content_type: "application/pdf"
)
lesson_9.description = "Postpartum Trimester 4 – Support for Mum – Sex and contraseption after birth"
lesson_9.save!

## Trimester 4 – Lesson 10
lesson_10 = trimester_4.lessons.find_or_initialize_by(title: "Sleep and tiredness after giving birth")
lesson_10.categories << trimester_4
lesson_10.user = michelle
lesson_10.lesson_type = :mind
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/sleep-tiredness-after-birth.jpg"),
  filename: "sleep-tiredness-after-birth.jpg",
  content_type: "image/jpeg"
)
lesson_10.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/sleep-tiredness-after-birth.pdf"),
  filename: "sleep-tiredness-after-birth.pdf",
  content_type: "application/pdf"
)
lesson_10.description = "Postpartum Trimester 4 – Support for Mum – Sleep and tiredness after giving birth"
lesson_10.save!

## Trimester 4 – Lesson 11
lesson_11 = trimester_4.lessons.find_or_initialize_by(title: "Asking for help")
lesson_11.categories << trimester_4
lesson_11.user = michelle
lesson_11.lesson_type = :mind
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/asking-for-help.jpg"),
  filename: "asking-for-help.jpg",
  content_type: "image/jpeg"
)
lesson_11.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/asking-for-help.pdf"),
  filename: "asking-for-help.pdf",
  content_type: "application/pdf"
)
lesson_11.description = "Postpartum Trimester 4 – Support for Mum – Asking for help"
lesson_11.save!

## Trimester 4 – Lesson 12
lesson_12 = trimester_4.lessons.find_or_initialize_by(title: "Self care checklist")
lesson_12.categories << trimester_4
lesson_12.user = michelle
lesson_12.lesson_type = :mind
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/self-care-checklist.jpg"),
  filename: "self-care-checklist.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Postpartum Trimester 4 – Support for Mum – Self care checklist"
# lesson_12.href = "#{Rails.configuration.website_address}#{Rails.application.routes.url_helpers.dashboard_post_path(Post.find_by(title: "Postpartum Self Care Checklist").id)}"
lesson_12.save!

## Trimester 4 – Lesson 13
lesson_13 = trimester_4.lessons.find_or_initialize_by(title: "What equipment do I need when I start the program?")
lesson_13.categories << trimester_4
lesson_13.user = michelle
lesson_13.lesson_type = :mind
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/what-equipment-postpartum-program.jpg"),
  filename: "what-equipment-postpartum-program.jpg",
  content_type: "image/jpeg"
)
lesson_13.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/what-equipment-postpartum-program.m4a"),
  filename: "what-equipment-postpartum-program.m4a",
  content_type: "attachment/m4a"
)
lesson_13.description = "Postpartum Trimester 4 – Support for Mum – What equipment do I need when I start the program?"
lesson_13.duration = "0:34"
lesson_13.save!

## Trimester 4 – Lesson 14
lesson_14 = trimester_4.lessons.find_or_initialize_by(title: "Postnatal depression / Baby blues")
lesson_14.categories << trimester_4
lesson_14.user = michelle
lesson_14.lesson_type = :mind
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/postnatal-depression-baby-blues.jpg"),
  filename: "postnatal-depression-baby-blues.jpg",
  content_type: "image/jpeg"
)
lesson_14.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/postnatal-depression-baby-blues.pdf"),
  filename: "postnatal-depression-baby-blues.pdf",
  content_type: "application/pdf"
)
lesson_14.description = "Postpartum Trimester 4 – Support for Mum – Postnatal depression / Baby blues"
lesson_14.save!
