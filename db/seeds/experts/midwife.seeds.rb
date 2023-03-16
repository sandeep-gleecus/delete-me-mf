# Relationships
experts = Category.find_by(title: "Experts")
user_midwife = User.find_by(email: "midwife@motherfit.co.uk")

# Midwife
midwife = experts.children.find_or_initialize_by(title: "Midwife")
midwife.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/midwife/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
midwife.resource.attach(
  io: File.open("app/assets/images/seeds/experts/midwife/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
midwife.category_type = :mind
midwife.description = "Midwife"
midwife.save!

# Lesson 1
lesson_1 = midwife.lessons.find_or_initialize_by(title: "Preparing for birth – Midwife")
lesson_1.categories << midwife
lesson_1.user = user_midwife
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/midwife/preparing-for-birth.jpg"),
  filename: "preparing-for-birth.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Midwife – Preparing for birth"
lesson_1.duration = "32:19"
lesson_1.vimeo_url = "https://vimeo.com/635564900"
lesson_1.save!

# Lesson 2
lesson_2 = midwife.lessons.find_or_initialize_by(title: "Hours/days/weeks after baby is born – Midwife")
lesson_2.categories << midwife
lesson_2.user = user_midwife
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/midwife/hrs-days-weeks-after-baby-is-born.jpg"),
  filename: "hrs-days-weeks-after-baby-is-born.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Midwife – Hours/days/weeks after baby is born – Midwife"
lesson_2.duration = "8:52"
lesson_2.vimeo_url = "https://vimeo.com/635516643"
lesson_2.save!
