# Relationships
experts = Category.find_by(title: "Experts")
user_breathwork_facilitator = User.find_by(email: "breathwork-facilitator@motherfit.co.uk")

# Breathwork Facilitator
breathwork_facilitator = experts.children.find_or_initialize_by(title: "Breathwork Facilitator")
breathwork_facilitator.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/breathwork-facilitator/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
breathwork_facilitator.resource.attach(
  io: File.open("app/assets/images/seeds/experts/breathwork-facilitator/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
breathwork_facilitator.category_type = :mind
breathwork_facilitator.description = "Breathwork Facilitator"
breathwork_facilitator.save!

## Lesson 1
lesson_1 = breathwork_facilitator.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << breathwork_facilitator
lesson_1.user = user_breathwork_facilitator
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/breathwork-facilitator/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Breathwork Introduction"
lesson_1.duration = "1:01"
lesson_1.vimeo_url = "https://vimeo.com/655595561"
lesson_1.save!

## Lesson 2
lesson_2 = breathwork_facilitator.lessons.find_or_initialize_by(title: "Calm")
lesson_2.categories << breathwork_facilitator
lesson_2.user = user_breathwork_facilitator
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/breathwork-facilitator/calm.jpg"),
  filename: "calm.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Breathwork – Calm"
lesson_2.duration = "12:25"
lesson_2.vimeo_url = "https://vimeo.com/655594551"
lesson_2.save!

## Lesson 3
lesson_3 = breathwork_facilitator.lessons.find_or_initialize_by(title: "Ground and calm SOS")
lesson_3.categories << breathwork_facilitator
lesson_3.user = user_breathwork_facilitator
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/breathwork-facilitator/ground-calm-sos.jpg"),
  filename: "ground-calm-sos.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Ground and calm SOS"
lesson_3.duration = "3:24"
lesson_3.vimeo_url = "https://vimeo.com/655594992"
lesson_3.save!

## Lesson 4
lesson_4 = breathwork_facilitator.lessons.find_or_initialize_by(title: "Resilience")
lesson_4.categories << breathwork_facilitator
lesson_4.user = user_breathwork_facilitator
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/breathwork-facilitator/resilience.jpg"),
  filename: "resilience.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Resilience"
lesson_4.duration = "12:52"
lesson_4.vimeo_url = "https://vimeo.com/655595111"
lesson_4.save!
