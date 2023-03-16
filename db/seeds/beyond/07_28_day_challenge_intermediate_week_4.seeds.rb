# Relationships
intermediate = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge").children.find_by(title: "Intermediate")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Intermediate – Week 4
intermediate_week_4 = intermediate.children.find_or_initialize_by(title: "Week 4")
intermediate_week_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
intermediate_week_4.category_type = :body
intermediate_week_4.description = "Beyond – 28 day intermediate challenge – Week 4"
intermediate_week_4.save!

## Week 4 – Lesson 1
lesson_1 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 22 / Rest and recover")
lesson_1.categories << intermediate_week_4
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-22-rest-recover.jpg"),
  filename: "day-22-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 22 / Rest and recover"
lesson_1.duration = "0:00"
lesson_1.vimeo_url = ""
lesson_1.save!

## Week 4 – Lesson 2
lesson_2 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 23 / Workout fat burner +")
lesson_2.categories << intermediate_week_4
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-23-fat-burner-plus.jpg"),
  filename: "day-23-fat-burner-plus.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 23 / Workout fat burner +"
lesson_2.duration = "37:08"
lesson_2.vimeo_url = "https://vimeo.com/616754038"
lesson_2.save!

## Week 4 – Lesson 3
lesson_3 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 24 / Workout lower body")
lesson_3.categories << intermediate_week_4
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-24-lower-body-strength.jpg"),
  filename: "day-24-lower-body-strength.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 24 / Workout lower body"
lesson_3.duration = "46:14"
lesson_3.vimeo_url = "https://vimeo.com/617731359"
lesson_3.save!

## Week 4 – Lesson 4
lesson_4 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 25 / Workout upper body")
lesson_4.categories << intermediate_week_4
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-25-upper-body-burn.jpg"),
  filename: "day-25-upper-body-burn.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 25 / Workout upper body"
lesson_4.duration = "29:52"
lesson_4.vimeo_url = "https://vimeo.com/618828260"
lesson_4.save!

## Week 4 – Lesson 5
lesson_5 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 26 / Part 1 / Stamina")
lesson_5.categories << intermediate_week_4
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-26-part-1-stamina.jpg"),
  filename: "day-26-part-1-stamina.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 26 / Part 1 / Stamina"
lesson_5.duration = "22:17"
lesson_5.vimeo_url = "https://vimeo.com/619669049"
lesson_5.save!

## Week 4 – Lesson 6
lesson_6 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 26 / Part 2 / Stretch")
lesson_6.categories << intermediate_week_4
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-26-part-2-stretch.jpg"),
  filename: "day-26-part-2-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 26 / Part 2 / Stretch"
lesson_6.duration = "26:34"
lesson_6.vimeo_url = "https://vimeo.com/619710589"
lesson_6.save!

## Week 4 – Lesson 7
lesson_7 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 4 / Day 27 / Workout boxing")
lesson_7.categories << intermediate_week_4
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-27-stress-busting-boxing.jpg"),
  filename: "day-27-stress-busting-boxing.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 27 / Workout boxing"
lesson_7.duration = "54:59"
lesson_7.vimeo_url = "https://vimeo.com/620668184"
lesson_7.save!

## Week 4 – Lesson 8
lesson_8 = intermediate_week_4.lessons.find_or_initialize_by(title: "Week 3 / Day 28 / Rest and recover")
lesson_8.categories << intermediate_week_4
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-4/day-28-well-done.jpg"),
  filename: "day-28-well-done.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – 28 day challenge – Intermediate – Week 4 – Day 28 / Rest and recover"
lesson_8.duration = "0:00"
lesson_8.vimeo_url = ""
lesson_8.save!
