# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 8
week_8 = the_program.children.find_or_initialize_by(title: "Week 8")
week_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_8.category_type = :body
week_8.description = "The Postpartum Program – Week 8"
week_8.save!

## Week 8 – Lesson 1
lesson_1 = week_8.lessons.find_or_initialize_by(title: "Day 1 / Workout 1")
lesson_1.categories << week_8
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-1-workout-1.jpg"),
  filename: "day-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 8 – Day 1 / Workout 1"
lesson_1.duration = "37:18"
lesson_1.vimeo_url = "https://vimeo.com/639834835"
lesson_1.save!

## Week 8 – Lesson 2
lesson_2 = week_8.lessons.find_or_initialize_by(title: "Day 2 / Core – Bonus Workout")
lesson_2.categories << week_8
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-2-core-workout.jpg"),
  filename: "day-2-core-workout.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 8 – Day 2 / Core – Bonus Workout"
lesson_2.duration = "18:23"
lesson_2.vimeo_url = "https://vimeo.com/675431789"
lesson_2.save!

## Week 8 – Lesson 3
lesson_3 = week_8.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_3.categories << week_8
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 8 – Day 3 / Workout 2"
lesson_3.duration = "41:56"
lesson_3.vimeo_url = "https://vimeo.com/639838120"
lesson_3.save!

## Week 8 – Lesson 4
lesson_4 = week_8.lessons.find_or_initialize_by(title: "Day 4 / How to fall in love with exercise")
lesson_4.categories << week_8
lesson_4.user = michelle
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-4-information.jpg"),
  filename: "day-4-information.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 8 – Day 4 / How to fall in love with exercise"
lesson_4.save!

## Week 8 – Lesson 5
lesson_5 = week_8.lessons.find_or_initialize_by(title: "Day 5 / Workout 3 & Stretch")
lesson_5.categories << week_8
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-5-workout-3-stretch.jpg"),
  filename: "day-5-workout-3-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 8 – Day 5 / Workout 3 & Stretch"
lesson_5.duration = "40:28"
lesson_5.vimeo_url = "https://vimeo.com/639841496"
lesson_5.save!

## Week 8 – Lesson 6
lesson_6 = week_8.lessons.find_or_initialize_by(title: "Day 6 / Do something for you")
lesson_6.categories << week_8
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-6-do-something-for-you.jpg"),
  filename: "day-6-do-something-for-you.jpg",
  content_type: "image/jpeg"
)
lesson_6.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-6-do-something-for-you.m4a"),
  filename: "day-6-do-something-for-you.m4a",
  content_type: "attachment/m4a"
)
lesson_6.description = "The Postpartum Program – Week 8 – Day 6 / Do something for you"
lesson_6.duration = "0:21"
lesson_6.save!

## Week 8 – Lesson 7
lesson_7 = week_8.lessons.find_or_initialize_by(title: "Day 7 / Workout 4")
lesson_7.categories << week_8
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-8/day-7-workout-4.jpg"),
  filename: "day-7-workout-4.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 8 – Day 7 / Workout 4"
lesson_7.duration = "35:09"
lesson_7.vimeo_url = "https://vimeo.com/639844540"
lesson_7.save!
