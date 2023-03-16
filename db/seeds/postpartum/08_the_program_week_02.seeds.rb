# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
meditation = User.find_by(email: "meditation@motherfit.co.uk")
perinatal_education = User.find_by(email: "perinatal-education@motherfit.co.uk")

# Week 2
week_2 = the_program.children.find_or_initialize_by(title: "Week 2")
week_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_2.category_type = :body
week_2.description = "The Postpartum Program – Week 2"
week_2.save!

## Week 2 – Lesson 1
lesson_1 = week_2.lessons.find_or_initialize_by(title: "Day 1 / Replay Learn Neutral")
lesson_1.categories << week_2
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-1-replay-learn-neutral.jpg"),
  filename: "day-1-replay-learn-neutral.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 2 – Day 1 / Replay Learn Neutral"
lesson_1.duration = "9:16"
lesson_1.vimeo_url = "https://vimeo.com/632748862"
lesson_1.save!

## Week 2 – Lesson 2
lesson_2 = week_2.lessons.find_or_initialize_by(title: "Day 2 / Part 1 / Workout 1")
lesson_2.categories << week_2
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-2-part-1-workout-1.jpg"),
  filename: "day-2-part-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 2 – Day 2 / Part 1 / Workout 1"
lesson_2.duration = "24:50"
lesson_2.vimeo_url = "https://vimeo.com/637237045"
lesson_2.save!

## Week 2 – Lesson 3
lesson_3 = week_2.lessons.find_or_initialize_by(title: "Day 2 / Part 2 / Be mindful of the symptoms of Postnatal Depression")
lesson_3.categories << week_2
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-2-part-2-depression.jpg"),
  filename: "day-2-part-2-depression.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 2 – Day 2 / Part 2 / Journal"
lesson_3.save!

## Week 2 – Lesson 4
lesson_4 = week_2.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_4.categories << week_2
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 2 – Day 3 / Workout 2"
lesson_4.duration = "24:20"
lesson_4.vimeo_url = "https://vimeo.com/637234736"
lesson_4.save!

## Week 2 – Lesson 5
lesson_5 = week_2.lessons.find_or_initialize_by(title: "Day 4 / Heal your postpartum body with some high protein meals")
lesson_5.categories << week_2
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-4-heal-your-postpartum-body.jpg"),
  filename: "day-4-heal-your-postpartum-body.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 2 – Day 4 / Heal your postpartum body with some high protein meals"
lesson_5.save!

## Week 2 – Lesson 6
lesson_6 = week_2.lessons.find_or_initialize_by(title: "Day 5 / Body Scan Meditation")
lesson_6.categories << week_2
lesson_6.user = meditation
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-5-meditation.jpg"),
  filename: "day-5-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "The Postpartum Program – Week 2 – Day 5 / Body Scan Meditation"
lesson_6.duration = "10:49"
lesson_6.vimeo_url = "https://vimeo.com/513597978"
lesson_6.save!

## Week 2 – Lesson 7
lesson_7 = week_2.lessons.find_or_initialize_by(title: "Day 6 / Baby massage and the five S’s")
lesson_7.categories << week_2
lesson_7.user = perinatal_education
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-6-perinatal-education.jpg"),
  filename: "day-6-perinatal-education.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 2 – Day 6 / Baby massage and the five S’s"
lesson_7.duration = "11:45"
lesson_7.vimeo_url = "https://vimeo.com/540960277"
lesson_7.save!

## Week 2 – Lesson 8
lesson_8 = week_2.lessons.find_or_initialize_by(title: "Day 7 / Stretch")
lesson_8.categories << week_2
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-2/day-7-stretch.jpg"),
  filename: "stretch-week-2-day-7.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "The Postpartum Program – Week 2 – Day 7 / Stretch"
lesson_8.duration = "21:43"
lesson_8.vimeo_url = "https://vimeo.com/637245289"
lesson_8.save!
