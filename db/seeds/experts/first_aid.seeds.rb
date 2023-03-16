# Relationships
experts = Category.find_by(title: "Experts")
user_first_aid = User.find_by(email: "first-aid@motherfit.co.uk")

## First Aid Expert
first_aid = experts.children.find_or_initialize_by(title: "First Aid")
first_aid.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
first_aid.resource.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
first_aid.category_type = :mind
first_aid.description = "First Aid Expert"
first_aid.save!

## Lesson 1
lesson_1 = first_aid.lessons.find_or_initialize_by(title: "Weaning, gagging and choking")
lesson_1.categories << first_aid
lesson_1.user = user_first_aid
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/weaning-gagging-choking.jpg"),
  filename: "weaning-gagging-choking.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Weaning, gagging and choking"
lesson_1.duration = "7:23"
lesson_1.vimeo_url = "https://vimeo.com/540356955"
lesson_1.save!

## Lesson 2
lesson_2 = first_aid.lessons.find_or_initialize_by(title: "Temperatures")
lesson_2.categories << first_aid
lesson_2.user = user_first_aid
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/temperatures.jpg"),
  filename: "temperatures.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Temperatures"
lesson_2.duration = "14:18"
lesson_2.vimeo_url = "https://vimeo.com/540360187"
lesson_2.save!

## Lesson 3
lesson_3 = first_aid.lessons.find_or_initialize_by(title: "Burns")
lesson_3.categories << first_aid
lesson_3.user = user_first_aid
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/burns.jpg"),
  filename: "burns.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Burns"
lesson_3.duration = "6:03"
lesson_3.vimeo_url = "https://vimeo.com/540354278"
lesson_3.save!

## Lesson 4
lesson_4 = first_aid.lessons.find_or_initialize_by(title: "CPR")
lesson_4.categories << first_aid
lesson_4.user = user_first_aid
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/cpr.jpg"),
  filename: "cpr.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "CPR"
lesson_4.duration = "5:40"
lesson_4.vimeo_url = "https://vimeo.com/540365947"
lesson_4.save!

## Lesson 5
lesson_5 = first_aid.lessons.find_or_initialize_by(title: "Allergies")
lesson_5.categories << first_aid
lesson_5.user = user_first_aid
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/first-aid/allergies.jpg"),
  filename: "allergies.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Allergies"
lesson_5.duration = "9:24"
lesson_5.vimeo_url = "https://vimeo.com/540350288"
lesson_5.save!
