# Relationships
experts = Category.find_by(title: "Experts")
user_meditation = User.find_by(email: "meditation@motherfit.co.uk")

# Meditation
meditation = experts.children.find_or_initialize_by(title: "Meditation")
meditation.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
meditation.resource.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
meditation.category_type = :mind
meditation.description = "Meditation"
meditation.save!

## Lesson 1
lesson_1 = meditation.lessons.find_or_initialize_by(title: "Pregnancy meditation")
lesson_1.categories << meditation
lesson_1.user = user_meditation
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/pregnancy-meditation.jpg"),
  filename: "pregnancy-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy meditation"
lesson_1.duration = "6:48"
lesson_1.vimeo_url = "https://vimeo.com/513558778"
lesson_1.save!

## Lesson 2
lesson_2 = meditation.lessons.find_or_initialize_by(title: "Affirmation meditation")
lesson_2.categories << meditation
lesson_2.user = user_meditation
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/affirmation-meditation.jpg"),
  filename: "affirmation-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Affirmation meditation"
lesson_2.duration = "8:43"
lesson_2.vimeo_url = "https://vimeo.com/513467258"
lesson_2.save!

## Lesson 3
lesson_3 = meditation.lessons.find_or_initialize_by(title: "Body scan meditation")
lesson_3.categories << meditation
lesson_3.user = user_meditation
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/body-scan-meditation.jpg"),
  filename: "body-scan-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Body scan meditation"
lesson_3.duration = "10:49"
lesson_3.vimeo_url = "https://vimeo.com/513597978"
lesson_3.save!

## Lesson 4
lesson_4 = meditation.lessons.find_or_initialize_by(title: "Chakra meditation")
lesson_4.categories << meditation
lesson_4.user = user_meditation
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/chakra-meditation.jpg"),
  filename: "chakra-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Chakra meditation"
lesson_4.duration = "19:40"
lesson_4.vimeo_url = "https://vimeo.com/513567989"
lesson_4.save!

## Lesson 5
lesson_5 = meditation.lessons.find_or_initialize_by(title: "Gratitude meditation")
lesson_5.categories << meditation
lesson_5.user = user_meditation
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/gratitude-meditation.jpg"),
  filename: "gratitude-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Gratitude meditation"
lesson_5.duration = "11:17"
lesson_5.vimeo_url = "https://vimeo.com/513587458"
lesson_5.save!

## Lesson 6
lesson_6 = meditation.lessons.find_or_initialize_by(title: "Grounding meditation")
lesson_6.categories << meditation
lesson_6.user = user_meditation
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/meditation/grounding-meditation.jpg"),
  filename: "grounding-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Grounding meditation"
lesson_6.duration = "11:19"
lesson_6.vimeo_url = "https://vimeo.com/513592189"
lesson_6.save!
