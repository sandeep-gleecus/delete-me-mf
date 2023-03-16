# Relationships
experts = Category.find_by(title: "Experts")
user_confidence_coach = User.find_by(email: "confidence-coach@motherfit.co.uk")

## Confidence Coach
confidence_coach = experts.children.find_or_initialize_by(title: "Confidence Coach")
confidence_coach.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/confidence-coach/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
confidence_coach.resource.attach(
  io: File.open("app/assets/images/seeds/experts/confidence-coach/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
confidence_coach.category_type = :mind
confidence_coach.description = "Confidence Coach Expert"
confidence_coach.save!

## Lesson 1
lesson_1 = confidence_coach.lessons.find_or_initialize_by(title: "Love your body")
lesson_1.categories << confidence_coach
lesson_1.user = user_confidence_coach
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/confidence-coach/love-your-body.jpg"),
  filename: "love-your-body.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Love your body"
lesson_1.duration = "33:37"
lesson_1.vimeo_url = "https://vimeo.com/666773980"
lesson_1.save!

## Lesson 2
lesson_2 = confidence_coach.lessons.find_or_initialize_by(title: "Leading lady")
lesson_2.categories << confidence_coach
lesson_2.user = user_confidence_coach
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/confidence-coach/leading-lady.jpg"),
  filename: "leading-lady.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Leading Lady"
lesson_2.duration = "26:30"
lesson_2.vimeo_url = "https://vimeo.com/666774757"
lesson_2.save!
