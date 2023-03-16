# Relationships
experts = Category.find_by(title: "Experts")
user_pelvic_health = User.find_by(email: "pelvic-health@motherfit.co.uk")

## Pelvic Health
pelvic_health = experts.children.find_or_initialize_by(title: "Pelvic Health")
pelvic_health.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/pelvic-health/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
pelvic_health.resource.attach(
  io: File.open("app/assets/images/seeds/experts/pelvic-health/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
pelvic_health.category_type = :mind
pelvic_health.description = "Pelvic Health"
pelvic_health.save!

## Lesson – 1
lesson_1 = pelvic_health.lessons.find_or_initialize_by(title: "During pregnancy")
lesson_1.categories << pelvic_health
lesson_1.user = user_pelvic_health
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/pelvic-health/during-pregnancy.jpg"),
  filename: "during-pregnancy.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pelvic Health – During pregnancy"
lesson_1.duration = "3:48"
lesson_1.vimeo_url = "https://vimeo.com/534174783"
lesson_1.save!

## Lesson 2
lesson_2 = pelvic_health.lessons.find_or_initialize_by(title: "After baby is born")
lesson_2.categories << pelvic_health
lesson_2.user = user_pelvic_health
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/pelvic-health/after-baby-is-born.jpg"),
  filename: "after-baby-is-born.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pelvic Health – After baby is born"
lesson_2.duration = "8:24"
lesson_2.vimeo_url = "https://vimeo.com/534178914"
lesson_2.save!
