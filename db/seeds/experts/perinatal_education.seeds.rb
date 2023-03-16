# Relationships
experts = Category.find_by(title: "Experts")
user_perinatal_education = User.find_by(email: "perinatal-education@motherfit.co.uk")

# Perinatal Education
perinatal_education = experts.children.find_or_initialize_by(title: "Perinatal Education")
perinatal_education.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/perinatal-education/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
perinatal_education.resource.attach(
  io: File.open("app/assets/images/seeds/experts/perinatal-education/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
perinatal_education.category_type = :mind
perinatal_education.description = "Perinatal Education"
perinatal_education.save!

## Lesson 1
lesson_1 = perinatal_education.lessons.find_or_initialize_by(title: "Calm your new baby – Perinatal")
lesson_1.categories << perinatal_education
lesson_1.user = user_perinatal_education
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/perinatal-education/calm-your-new-baby.jpg"),
  filename: "calm-your-new-baby.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Perinatal Education – Calm your new baby"
lesson_1.duration = "9:18"
lesson_1.vimeo_url = "https://vimeo.com/540952742"
lesson_1.save!

## Lesson 2
lesson_2 = perinatal_education.lessons.find_or_initialize_by(title: "Baby massage and the five S’s")
lesson_2.categories << perinatal_education
lesson_2.user = user_perinatal_education
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/perinatal-education/baby-massage-and-the-five-s.jpg"),
  filename: "baby-massage-and-the-five-s.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Perinatal Education – Baby massage and the five S’s"
lesson_2.duration = "11:45"
lesson_2.vimeo_url = "https://vimeo.com/540960277"
lesson_2.save!
