# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 7
week_7 = the_program.children.find_or_initialize_by(title: "Week 7")
week_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_7.category_type = :body
week_7.description = "The Postpartum Program – Week 7"
week_7.save!

## Week 7 – Lesson 1
lesson_1 = week_7.lessons.find_or_initialize_by(title: "Day 1 / Workout 1")
lesson_1.categories << week_7
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-1-workout-1.jpg"),
  filename: "day-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 7 – Day 1 / Workout 1"
lesson_1.duration = "37:21"
lesson_1.vimeo_url = "https://vimeo.com/638175397"
lesson_1.save!

## Week 7 – Lesson 2
lesson_2 = week_7.lessons.find_or_initialize_by(title: "Day 2 / Yoga (Twisty)")
lesson_2.categories << week_7
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-2-yoga.jpg"),
  filename: "day-2-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 7 – Day 2 / Yoga (Twisty)"
lesson_2.duration = "23:13"
lesson_2.vimeo_url = "https://vimeo.com/648012311"
lesson_2.save!

## Week 7 – Lesson 3
lesson_3 = week_7.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_3.categories << week_7
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 7 – Day 3 / Workout 2"
lesson_3.duration = "42:49"
lesson_3.vimeo_url = "https://vimeo.com/638177759"
lesson_3.save!

## Week 7 – Lesson 4
lesson_4 = week_7.lessons.find_or_initialize_by(title: "Day 4 / Part 1 / Replay Progressing Core Engagement")
lesson_4.categories << week_7
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-4-part-1-replay-progressing.jpg"),
  filename: "day-4-part-1-replay-progressing.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 7 – Day 4 / Part 1 / Replay Progressing Core Engagement"
lesson_4.duration = "19:24"
lesson_4.vimeo_url = "https://vimeo.com/628494902"
lesson_4.save!

## Week 7 – Lesson 5
lesson_5 = week_7.lessons.find_or_initialize_by(title: "Day 4 / Part 2 / Walk")
lesson_5.categories << week_7
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-4-part-2-walk.jpg"),
  filename: "day-4-part-2-walk.jpg",
  content_type: "image/jpeg"
)
lesson_5.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-4-part-2-walk.m4a"),
  filename: "day-4-part-2-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_5.description = "The Postpartum Program – Week 7 – Day 4 / Part 2 / Walk"
lesson_5.duration = "0:07"
lesson_5.save!

## Week 7 – Lesson 6
lesson_6 = week_7.lessons.find_or_initialize_by(title: "Day 5 / Workout 3 & Stretch")
lesson_6.categories << week_7
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-5-workout-3-stretch.jpg"),
  filename: "day-5-workout-3-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "The Postpartum Program – Week 7 – Day 5 / Workout 3 & Stretch"
lesson_6.duration = "38:06"
lesson_6.vimeo_url = "https://vimeo.com/638180571"
lesson_6.save!

## Week 7 – Lesson 7
lesson_7 = week_7.lessons.find_or_initialize_by(title: "Day 6 / Nutrition")
lesson_7.categories << week_7
lesson_7.user = michelle
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-6-nutrition.jpg"),
  filename: "day-6-nutrition.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 7 – Day 6 / Nutrition"
lesson_7.duration = "13:03"
lesson_7.vimeo_url = "https://vimeo.com/670363057"
lesson_7.save!

## Week 7 – Lesson 8
lesson_8 = week_7.lessons.find_or_initialize_by(title: "Day 7 / Part 1 / Workout 4")
lesson_8.categories << week_7
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-7-part-1-workout-4.jpg"),
  filename: "day-7-part-1-workout-4.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "The Postpartum Program – Week 7 – Day 7 / Part 1 / Workout 4"
lesson_8.duration = "35:58"
lesson_8.vimeo_url = "https://vimeo.com/638182926"
lesson_8.save!

## Week 7 – Lesson 9
lesson_9 = week_7.lessons.find_or_initialize_by(title: "Day 7 / Part 2 / Walk")
lesson_9.categories << week_7
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-7-part-2-walk.jpg"),
  filename: "day-7-part-2-walk.jpg",
  content_type: "image/jpeg"
)
lesson_9.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-7/day-7-part-2-walk.m4a"),
  filename: "day-7-part-2-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_9.description = "The Postpartum Program – Week 7 – Day 7 / Part 2 / Walk"
lesson_9.duration = "0:07"
lesson_9.save!
