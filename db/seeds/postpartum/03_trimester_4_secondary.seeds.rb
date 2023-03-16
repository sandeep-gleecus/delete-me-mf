# Relationships
trimester_4 = Category.find_by(title: "Postpartum").children.find_by(title: "Trimester 4")
experts = Category.find_by(title: "Experts")
shared = Category.find_by(title: "Shared")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Secondary
secondary = trimester_4.children.find_or_initialize_by(title: "Secondary")
secondary.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
secondary.category_type = :body
secondary.description = "Pregnancy Trimester 4 – Secondary"
secondary.save!

## Secondary – Lesson 1
lesson_1 = secondary.lessons.find_or_initialize_by(title: "Registering the birth of your baby")
lesson_1.categories << secondary
lesson_1.user = michelle
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/registering-your-baby.jpg"),
  filename: "registering-your-baby.jpg",
  content_type: "image/jpeg"
)
lesson_1.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/registering-your-baby.pdf"),
  filename: "registering-your-baby.pdf",
  content_type: "application/pdf"
)
lesson_1.description = "Postpartum Trimester 4 – Support for Baby – Registering the birth of your baby"
lesson_1.save!

## Secondary – Lesson 2
## Expert Advisor – Sleep Consultant
lesson_2 = experts.children.find_by(title: "Sleep Consultant").lessons.find_by(title: "1st few days")
lesson_2.categories << secondary
lesson_2.save!

## Secondary – Lesson 3
## Expert Advisor – Perinatal Education
lesson_3 = experts.children.find_by(title: "Perinatal Education").lessons.find_by(title: "Calm your new baby – Perinatal")
lesson_3.categories << secondary
lesson_3.save!

## Secondary – Lesson 4
lesson_4 = secondary.lessons.find_or_initialize_by(title: "Babies Health & Development Reviews – The Red Book")
lesson_4.categories << secondary
lesson_4.user = michelle
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/red-book.jpg"),
  filename: "red-book.jpg",
  content_type: "image/jpeg"
)
lesson_4.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/red-book.pdf"),
  filename: "red-book.pdf",
  content_type: "application/pdf"
)
lesson_4.description = "Postpartum Trimester 4 – Support for Baby – Babies Health & Development Reviews – The Red Book"
lesson_4.save!

## Secondary – Lesson 5
## Expert Advisor – Perinatal Education
lesson_5 = experts.children.find_by(title: "Perinatal Education").lessons.find_by(title: "Baby massage and the five S’s")
lesson_5.categories << secondary
lesson_5.save!

## Secondary – Lesson 6
## Expert Advisor – First Aid
lesson_6 = experts.children.find_by(title: "First Aid").lessons.find_by(title: "Temperatures")
lesson_6.categories << secondary
lesson_6.save!

## Secondary – Lesson 7
lesson_7 = secondary.lessons.find_or_initialize_by(title: "Vaccinations")
lesson_7.categories << secondary
lesson_7.user = michelle
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/vaccinations.jpg"),
  filename: "vaccinations.jpg",
  content_type: "image/jpeg"
)
lesson_7.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/vaccinations.pdf"),
  filename: "vaccinations.pdf",
  content_type: "application/pdf"
)
lesson_7.description = "Postpartum Trimester 4 – Support for Baby – Vaccinations"
lesson_7.save!

## Secondary – Lesson 8
lesson_8 = secondary.lessons.find_or_initialize_by(title: "Teething")
lesson_8.categories << secondary
lesson_8.user = michelle
lesson_8.lesson_type = :mind
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/teething.jpg"),
  filename: "teething.jpg",
  content_type: "image/jpeg"
)
lesson_8.resource.attach(
  io: File.open("app/assets/images/seeds/postpartum/trimester-4/secondary/teething.pdf"),
  filename: "teething.pdf",
  content_type: "application/pdf"
)
lesson_8.description = "Postpartum Trimester 4 – Support for Baby – Baby Teething"
lesson_8.save!
