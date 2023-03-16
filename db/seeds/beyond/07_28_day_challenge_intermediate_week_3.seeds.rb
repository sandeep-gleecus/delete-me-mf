# Relationships
intermediate = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge").children.find_by(title: "Intermediate")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Intermediate – Week 3
intermediate_week_3 = intermediate.children.find_or_initialize_by(title: "Week 3")
intermediate_week_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
intermediate_week_3.category_type = :body
intermediate_week_3.description = "Beyond – 28 day intermediate challenge – Week 3"
intermediate_week_3.save!

## Week 3 – Lesson 1
lesson_1 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 15 / Workout fat burner +")
lesson_1.categories << intermediate_week_3
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-15-fat-burner.jpg"),
  filename: "day-15-fat-burner.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 15 / Workout fat burner +"
lesson_1.duration = "48:24"
lesson_1.vimeo_url = "https://vimeo.com/609689766"
lesson_1.save!

## Week 3 – Lesson 2
lesson_2 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 16 / Rest and recover")
lesson_2.categories << intermediate_week_3
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-16-rest-recover.jpg"),
  filename: "day-16-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 16 / Rest and recover"
lesson_2.duration = "0:00"
lesson_2.vimeo_url = ""
lesson_2.save!

## Week 3 – Lesson 3
lesson_3 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 17 / Workout lower body")
lesson_3.categories << intermediate_week_3
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-17-lower-body-strength.jpg"),
  filename: "day-17-lower-body-strength.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 17 / Workout lower body"
lesson_3.duration = "38:49"
lesson_3.vimeo_url = "https://vimeo.com/611457861"
lesson_3.save!

## Week 3 – Lesson 4
lesson_4 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 18 / Workout upper body")
lesson_4.categories << intermediate_week_3
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-18-upper-body-burn.jpg"),
  filename: "day-18-upper-body-burn.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 18 / Workout upper body"
lesson_4.duration = "45:26"
lesson_4.vimeo_url = "https://vimeo.com/612529407"
lesson_4.save!

## Week 3 – Lesson 5
lesson_5 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 19 / Part 1 / Workout stamina")
lesson_5.categories << intermediate_week_3
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-19-part-1-stamina.jpg"),
  filename: "day-19-part-1-stamina.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 19 / Part 1 / Workout stamina"
lesson_5.duration = "24:49"
lesson_5.vimeo_url = "https://vimeo.com/613360296"
lesson_5.save!

## Week 3 – Lesson 6
lesson_6 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 19 / Part 2 / Stretch")
lesson_6.categories << intermediate_week_3
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-19-part-2-stretch.jpg"),
  filename: "day-19-part-2-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 19 / Part 2 / Stretch"
lesson_6.duration = "19:15"
lesson_6.vimeo_url = "https://vimeo.com/613395467"
lesson_6.save!

## Week 3 – Lesson 7
lesson_7 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 20 / Workout boxing")
lesson_7.categories << intermediate_week_3
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-20-stress-busting-boxing.jpg"),
  filename: "day-20-stress-busting-boxing.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 20 / Workout boxing"
lesson_7.duration = "52:31"
lesson_7.vimeo_url = "https://vimeo.com/614377397"
lesson_7.save!

## Week 3 – Lesson 8
lesson_8 = intermediate_week_3.lessons.find_or_initialize_by(title: "Week 3 / Day 21 / Rest and recover")
lesson_8.categories << intermediate_week_3
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/week-3/day-21-rest-recover.jpg"),
  filename: "day-21-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – 28 day challenge – Intermediate – Week 3 – Day 21 / Rest and recover"
lesson_8.duration = "0:00"
lesson_8.vimeo_url = ""
lesson_8.save!
