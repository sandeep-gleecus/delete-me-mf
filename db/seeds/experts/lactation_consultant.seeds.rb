# Relationships
experts = Category.find_by(title: "Experts")
user_lactation_consultant = User.find_by(email: "lactation-consultant@motherfit.co.uk")

# Lactation Consultant
lactation_consultant = experts.children.find_or_initialize_by(title: "Lactation Consultant")
lactation_consultant.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/lactation-consultant/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
lactation_consultant.resource.attach(
  io: File.open("app/assets/images/seeds/experts/lactation-consultant/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
lactation_consultant.category_type = :mind
lactation_consultant.description = "Lactation Consultant"
lactation_consultant.save!

## Lesson 1
lesson_1 = lactation_consultant.lessons.find_or_initialize_by(title: "Breastfeeding part 1")
lesson_1.categories << lactation_consultant
lesson_1.user = user_lactation_consultant
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/lactation-consultant/breastfeeding-part-1.jpg"),
  filename: "breastfeeding-part-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "lactation Consultant – Breastfeeding part 1"
lesson_1.duration = "16:54"
lesson_1.vimeo_url = "https://vimeo.com/517557216"
lesson_1.save!

## Lesson 2
lesson_2 = lactation_consultant.lessons.find_or_initialize_by(title: "Breastfeeding part 2")
lesson_2.categories << lactation_consultant
lesson_2.user = user_lactation_consultant
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/lactation-consultant/breastfeeding-part-2.jpg"),
  filename: "breastfeeding-part-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "lactation Consultant – Breastfeeding part 2"
lesson_2.duration = "12:20"
lesson_2.vimeo_url = "https://vimeo.com/515159754"
lesson_2.save!
