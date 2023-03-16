# Relationships
experts = Category.find_by(title: "Experts")
user_hypnobirthing = User.find_by(email: "hypnobirthing@motherfit.co.uk")

# Hypnobirthing
hypnobirthing = experts.children.find_or_initialize_by(title: "Hypnobirthing")
hypnobirthing.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
hypnobirthing.resource.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
hypnobirthing.category_type = :mind
hypnobirthing.description = "Hypnobirthing"
hypnobirthing.save!

## Lesson 1
lesson_1 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 1")
lesson_1.categories << hypnobirthing
lesson_1.user = user_hypnobirthing
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-1.jpg"),
  filename: "hypnobirthing-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Session 1"
lesson_1.duration = "9:47"
lesson_1.vimeo_url = "https://vimeo.com/685185133"
lesson_1.save!

## Lesson 2
lesson_2 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 2")
lesson_2.categories << hypnobirthing
lesson_2.user = user_hypnobirthing
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-2.jpg"),
  filename: "hypnobirthing-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Pregnancy Trimester 3 – Antental – Hypnobirthing with Tamara – Session 2"
lesson_2.duration = "10:21"
lesson_2.vimeo_url = "https://vimeo.com/685186976"
lesson_2.save!

## Lesson 3
lesson_3 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 3")
lesson_3.categories << hypnobirthing
lesson_3.user = user_hypnobirthing
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-3.jpg"),
  filename: "hypnobirthing-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Pregnancy Trimester 3 – Antental – Hypnobirthing with Tamara – Session 3"
lesson_3.duration = "10:57"
lesson_3.vimeo_url = "https://vimeo.com/685187723"
lesson_3.save!

## Lesson 4
lesson_4 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 4")
lesson_4.categories << hypnobirthing
lesson_4.user = user_hypnobirthing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-4.jpg"),
  filename: "hypnobirthing-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Pregnancy Trimester 3 – Antental – Hypnobirthing with Tamara – Session 4"
lesson_4.duration = "12:52"
lesson_4.vimeo_url = "https://vimeo.com/685188479"
lesson_4.save!

## Lesson 5
lesson_5 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 5")
lesson_5.categories << hypnobirthing
lesson_5.user = user_hypnobirthing
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-5.jpg"),
  filename: "hypnobirthing-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Pregnancy Trimester 3 – Antenatal – Hypnobirthing with Tamara – Session 5"
lesson_5.duration = "12:46"
lesson_5.vimeo_url = "https://vimeo.com/685190437"
lesson_5.save!

## Lesson 6
lesson_6 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 6")
lesson_6.categories << hypnobirthing
lesson_6.user = user_hypnobirthing
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-6.jpg"),
  filename: "hypnobirthing-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Pregnancy Trimester 3 – Antental – Hypnobirthing with Tamara – Session 6"
lesson_6.duration = "6:35"
lesson_6.vimeo_url = "https://vimeo.com/685193307"
lesson_6.save!

## Lesson 7
lesson_7 = hypnobirthing.lessons.find_or_initialize_by(title: "Hypnobirthing – Session 7")
lesson_7.categories << hypnobirthing
lesson_7.user = user_hypnobirthing
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/hypnobirthing/hypnobirthing-7.jpg"),
  filename: "hypnobirthing-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Pregnancy Trimester 3 – Hypnobirthing with Tamara – Session 7"
lesson_7.duration = "2:09"
lesson_7.vimeo_url = "https://vimeo.com/685193858"
lesson_7.save!
