# Relationships
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Shared
shared = Category.find_or_initialize_by(title: "Shared")
shared.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
shared.description = "Shared"
shared.save!

# Lesson 1
lesson_1 = shared.lessons.find_or_initialize_by(title: "Meals to nourish your body")
lesson_1.categories << shared
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/meals-to-nourish-you.jpg"),
  filename: "meals-to-nourish-you.jpg",
  content_type: "image/jpeg"
)
lesson_1.resource.attach(
  io: File.open("app/assets/images/seeds/shared/meals-to-nourish-you.pdf"),
  filename: "meals-to-nourish-you.pdf",
  content_type: "application/pdf"
)
lesson_1.description = "Meals to nourish your body"
lesson_1.save!

# Lesson 2
lesson_2 = shared.lessons.find_or_initialize_by(title: "Morning sickness")
lesson_2.categories << shared
lesson_2.user = michelle
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/morning-sickness.jpg"),
  filename: "morning-sickness.jpg",
  content_type: "image/jpeg"
)
lesson_2.resource.attach(
  io: File.open("app/assets/images/seeds/shared/morning-sickness.pdf"),
  filename: "morning-sickness.pdf",
  content_type: "application/pdf"
)
lesson_2.description = "Pregnancy – Morning sickness"
lesson_2.save!

# Lesson 3
lesson_3 = shared.lessons.find_or_initialize_by(title: "I’m pregnant – what happens when?")
lesson_3.categories << shared
lesson_3.user = michelle
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/what-happens-when.jpg"),
  filename: "what-happens-when.jpg",
  content_type: "image/jpeg"
)
lesson_3.resource.attach(
  io: File.open("app/assets/images/seeds/shared/what-happens-when.pdf"),
  filename: "what-happens-when.pdf",
  content_type: "application/pdf"
)
lesson_3.description = "Pregnancy – I’m pregnant – what happens when?"
lesson_3.save!

# Lesson 4
lesson_4 = shared.lessons.find_or_initialize_by(title: "Foods to eat and not to eat during pregnancy")
lesson_4.categories << shared
lesson_4.user = michelle
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/foods-to-eat-and-not-eat.jpg"),
  filename: "foods-to-eat-and-not-eat.jpg",
  content_type: "image/jpeg"
)
lesson_4.resource.attach(
  io: File.open("app/assets/images/seeds/shared/foods-to-eat-and-not-eat.pdf"),
  filename: "foods-to-eat-and-not-eat.pdf",
  content_type: "application/pdf"
)
lesson_4.description = "Pregnancy – Foods to eat and not to eat during pregnancy"
lesson_4.save!

# Lesson 5
lesson_5 = shared.lessons.find_or_initialize_by(title: "I’m pregnant – what questions will I get asked by my midwife?")
lesson_5.categories << shared
lesson_5.user = michelle
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/what-questions-midwife-will-ask.jpg"),
  filename: "what-questions-midwife-will-ask.jpg",
  content_type: "image/jpeg"
)
lesson_5.resource.attach(
  io: File.open("app/assets/images/seeds/shared/what-questions-midwife-will-ask.pdf"),
  filename: "what-questions-midwife-will-ask.pdf",
  content_type: "application/pdf"
)
lesson_5.description = "Pregnancy – I’m pregnant – what questions will I get asked by my midwife?"
lesson_5.save!

# Lesson 6
lesson_6 = shared.lessons.find_or_initialize_by(title: "Physical activity guidelines – pregnant women")
lesson_6.categories << shared
lesson_6.user = michelle
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/physical-activity-guidelines-pregnant.jpg"),
  filename: "physical-activity-guidelines-pregnant.jpg",
  content_type: "image/jpeg"
)
lesson_6.resource.attach(
  io: File.open("app/assets/images/seeds/shared/physical-activity-guidelines-pregnant.pdf"),
  filename: "physical-activity-guidelines-pregnant.pdf",
  content_type: "application/pdf"
)
lesson_6.description = "Pregnancy – Physical activity guidelines – pregnant women"
lesson_6.save!

# Lesson 7
lesson_7 = shared.lessons.find_or_initialize_by(title: "How to prepare for C-section")
lesson_7.categories << shared
lesson_7.user = michelle
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/prepare-for-c-section.jpg"),
  filename: "prepare-for-c-section.jpg",
  content_type: "image/jpeg"
)
lesson_7.resource.attach(
  io: File.open("app/assets/images/seeds/shared/prepare-for-c-section.pdf"),
  filename: "prepare-for-c-section.pdf",
  content_type: "application/pdf"
)
lesson_7.description = "Pregnancy – How to prepare for C-section"
lesson_7.save!

# Lesson 8
lesson_8 = shared.lessons.find_or_initialize_by(title: "Giving birth – where and how?")
lesson_8.categories << shared
lesson_8.user = michelle
lesson_8.lesson_type = :mind
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/birth-where-and-how.jpg"),
  filename: "birth-where-and-how.jpg",
  content_type: "image/jpeg"
)
lesson_8.resource.attach(
  io: File.open("app/assets/images/seeds/shared/birth-where-and-how.pdf"),
  filename: "birth-where-and-how.pdf",
  content_type: "application/pdf"
)
lesson_8.description = "Pregnancy – Giving birth – where and how?"
lesson_8.save!

# Lesson 9
lesson_9 = shared.lessons.find_or_initialize_by(title: "Physical activity guidelines – after childbirth")
lesson_9.categories << shared
lesson_9.user = michelle
lesson_9.lesson_type = :mind
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/physical-activity-guidelines-after-birth.jpg"),
  filename: "physical-activity-guidelines-after-birth.jpg",
  content_type: "image/jpeg"
)
lesson_9.resource.attach(
  io: File.open("app/assets/images/seeds/shared/physical-activity-guidelines-after-birth.pdf"),
  filename: "physical-activity-guidelines-after-birth.pdf",
  content_type: "application/pdf"
)
lesson_9.description = "Postpartum – Physical activity guidelines – after childbirth"
lesson_9.save!

# Lesson 10
lesson_10 = shared.lessons.find_or_initialize_by(title: "Physical activity guidelines – adults, children and early years")
lesson_10.categories << shared
lesson_10.user = michelle
lesson_10.lesson_type = :mind
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/physical-activity-guidelines-adults-children.jpg"),
  filename: "physical-activity-guidelines-adults-children.jpg",
  content_type: "image/jpeg"
)
lesson_10.resource.attach(
  io: File.open("app/assets/images/seeds/shared/physical-activity-guidelines-adults-children.pdf"),
  filename: "physical-activity-guidelines-adults-children.pdf",
  content_type: "application/pdf"
)
lesson_10.description = "Beyond – Physical activity guidelines – adults, children and early years"
lesson_10.save!
