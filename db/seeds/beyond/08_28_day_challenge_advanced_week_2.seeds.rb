# Relationships
advanced = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge").children.find_by(title: "Advanced")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Advanced – Week 2
advanced_week_2 = advanced.children.find_or_initialize_by(title: "Week 2")
advanced_week_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
advanced_week_2.category_type = :body
advanced_week_2.description = "Beyond – 28 day advanced challenge – Week 2"
advanced_week_2.save!

## Week 2 – Lesson 1
lesson_1 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 8 / Workout fat burner")
lesson_1.categories << advanced_week_2
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-8-fat-burner.jpg"),
  filename: "day-8-fat-burner.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 8 / Workout fat burner"
lesson_1.duration = "34:41"
lesson_1.vimeo_url = "https://vimeo.com/603908884"
lesson_1.save!

## Week 2 – Lesson 2
lesson_2 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 9 / Workout fat burner+")
lesson_2.categories << advanced_week_2
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-9-fat-burner-plus.jpg"),
  filename: "day-9-fat-burner-plus.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 28 day challenge – Advanced – Week 2 / Day 9 / Workout fat burner+"
lesson_2.duration = "34:41"
lesson_2.vimeo_url = "https://vimeo.com/604626848"
lesson_2.save!

## Week 2 – Lesson 3
lesson_3 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 10 / Workout lower body")
lesson_3.categories << advanced_week_2
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-10-lower-body-strength.jpg"),
  filename: "day-10-lower-body-strength.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 10 / Workout lower body"
lesson_3.duration = "28:22"
lesson_3.vimeo_url = "https://vimeo.com/605414897"
lesson_3.save!

## Week 2 – Lesson 4
lesson_4 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 11 / Part 1 / Workout arms and abs")
lesson_4.categories << advanced_week_2
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-11-part-1-arms-abs.jpg"),
  filename: "day-11-part-1-arms-abs.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 11 / Part 1 / Workout arms and abs"
lesson_4.duration = "26:11"
lesson_4.vimeo_url = "https://vimeo.com/606298585"
lesson_4.save!

## Week 2 – Lesson 5
lesson_5 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 11 / Part 2 / Workout upper body")
lesson_5.categories << advanced_week_2
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-11-part-2-upper-body-burn.jpg"),
  filename: "day-11-part-2-upper-body-burn.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 11 / Part 2 / Workout upper body"
lesson_5.duration = "38:57"
lesson_5.vimeo_url = "https://vimeo.com/606411553"
lesson_5.save!

## Week 2 – Lesson 6
lesson_6 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 12 / Part 1 / Workout stamina")
lesson_6.categories << advanced_week_2
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-12-part-1-stamina.jpg"),
  filename: "day-12-part-1-stamina.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 12 / Part 1 / Workout stamina"
lesson_6.duration = "20:10"
lesson_6.vimeo_url = "https://vimeo.com/607191453"
lesson_6.save!

## Week 2 – Lesson 7
lesson_7 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 12 / Part 2 / Stretch")
lesson_7.categories << advanced_week_2
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-12-part-2-stretch.jpg"),
  filename: "day-12-part-2-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 12 / Part 2 / Stretch"
lesson_7.duration = "19:17"
lesson_7.vimeo_url = "https://vimeo.com/607204629"
lesson_7.save!

## Week 2 – Lesson 8
lesson_8 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 13 / Workout boxing")
lesson_8.categories << advanced_week_2
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-13-stress-busting-boxing.jpg"),
  filename: "day-13-stress-busting-boxing.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 13 / Workout boxing"
lesson_8.duration = "52:42"
lesson_8.vimeo_url = "https://vimeo.com/608155157"
lesson_8.save!

## Week 2 – Lesson 9
lesson_9 = advanced_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 14 / Rest and recover")
lesson_9.categories << advanced_week_2
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-2/day-14-rest-recover.jpg"),
  filename: "day-14-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – 28 day challenge – Advanced – Week 2 – Day 14 / Rest and recover"
lesson_9.duration = "0:00"
lesson_9.vimeo_url = ""
lesson_9.save!
