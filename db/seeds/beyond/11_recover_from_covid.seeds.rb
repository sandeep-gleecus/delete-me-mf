# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Recovery from Covid
recovery_from_covid = challenges_and_programs.children.find_or_initialize_by(title: "Recovery from Covid")
recovery_from_covid.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
recovery_from_covid.category_type = :body
recovery_from_covid.description = "Beyond – Recovery from Covid"
recovery_from_covid.save!

## Recover from Covid – Lesson 1
lesson_1 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 1")
lesson_1.categories << recovery_from_covid
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-1-fat-burner-plus.jpg"),
  filename: "day-1-fat-burner-plus.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Recovery from Covid / Day 1"
lesson_1.duration = "28:02"
lesson_1.vimeo_url = "https://vimeo.com/681537720"
lesson_1.save!

## Recover from Covid – Lesson 2
lesson_2 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 2 / Part 1")
lesson_2.categories << recovery_from_covid
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-2-part-1-lower-body-strength.jpg"),
  filename: "day-2-part-1-lower-body-strength.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Recovery from Covid / Day 2 / Part 1"
lesson_2.duration = "35:11"
lesson_2.vimeo_url = "https://vimeo.com/681541422"
lesson_2.save!

## Recover from Covid – Lesson 3
lesson_3 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 2 / Part 2")
lesson_3.categories << recovery_from_covid
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-2-part-2-stretch.jpg"),
  filename: "day-2-part-2-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Recovery from Covid / Day 2 / Part 2"
lesson_3.duration = "16:59"
lesson_3.vimeo_url = "https://vimeo.com/681545813"
lesson_3.save!

## Recover from Covid – Lesson 4
lesson_4 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 3")
lesson_4.categories << recovery_from_covid
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-3-boxing.jpg"),
  filename: "day-3-boxing.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Recovery from Covid / Day 3"
lesson_4.duration = "35:50"
lesson_4.vimeo_url = "https://vimeo.com/681547958"
lesson_4.save!

## Recover from Covid – Lesson 5
lesson_5 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 4 / Part 1")
lesson_5.categories << recovery_from_covid
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-4-part-1-upper-body-burn.jpg"),
  filename: "day-4-part-1-upper-body-burn.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Recovery from Covid / Day 4 / Part 1"
lesson_5.duration = "32:00"
lesson_5.vimeo_url = "https://vimeo.com/681552461"
lesson_5.save!

## Recover from Covid – Lesson 6
lesson_6 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 4 / Part 2")
lesson_6.categories << recovery_from_covid
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-4-part-2-arms-abs.jpg"),
  filename: "day-4-part-2-arms-abs.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Recovery from Covid / Day 4 / Part 2"
lesson_6.duration = "27:46"
lesson_6.vimeo_url = "https://vimeo.com/681556281"
lesson_6.save!

## Recover from Covid – Lesson 7
lesson_7 = recovery_from_covid.lessons.find_or_initialize_by(title: "Day 5")
lesson_7.categories << recovery_from_covid
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/recovery-from-covid/day-5-fat-burner.jpg"),
  filename: "day-5-fat-burner.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Recovery from Covid / Day 5"
lesson_7.duration = "24:11"
lesson_7.vimeo_url = "https://vimeo.com/681559804"
lesson_7.save!
