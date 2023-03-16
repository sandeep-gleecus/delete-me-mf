# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
sleep_consultant = User.find_by(email: "sleep-consultant@motherfit.co.uk")
meditation = User.find_by(email: "meditation@motherfit.co.uk")

# Week 3
week_3 = the_program.children.find_or_initialize_by(title: "Week 3")
week_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_3.category_type = :body
week_3.description = "The Postpartum Program – Week 3"
week_3.save!

## Week 3 – Lesson 1
lesson_1 = week_3.lessons.find_or_initialize_by(title: "Day 1 / Workout 1")
lesson_1.categories << week_3
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-1-workout-1.jpg"),
  filename: "day-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 3 – Day 1 / Workout 1"
lesson_1.duration = "28:38"
lesson_1.vimeo_url = "https://vimeo.com/637359091"
lesson_1.save!

## Week 3 – Lesson 2
lesson_2 = week_3.lessons.find_or_initialize_by(title: "Day 2 / Get advice on how to implement a sleep plan for your baby")
lesson_2.categories << week_3
lesson_2.user = sleep_consultant
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-2-sleep-series.jpg"),
  filename: "day-2-sleep-series.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 3 – Day 2 / Get advice on how to implement a sleep plan for your baby"
lesson_2.duration = "2:58"
lesson_2.vimeo_url = "https://vimeo.com/517166478"
lesson_2.save!

## Week 3 – Lesson 3
lesson_3 = week_3.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_3.categories << week_3
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 3 – Day 3 / Workout 2"
lesson_3.duration = "26:42"
lesson_3.vimeo_url = "https://vimeo.com/637354704"
lesson_3.save!

## Week 3 – Lesson 4
lesson_4 = week_3.lessons.find_or_initialize_by(title: "Day 4 / Part 1 / Replay Breath with Movement")
lesson_4.categories << week_3
lesson_4.user = michelle
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-4-part-1-replay-breath.jpg"),
  filename: "day-4-part-1-replay-breath.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 3 – Day 4 / Part 1 / Replay Breath with Movement"
lesson_4.duration = "15:39"
lesson_4.vimeo_url = "https://vimeo.com/628486491"
lesson_4.save!

## Week 3 – Lesson 5
lesson_5 = week_3.lessons.find_or_initialize_by(title: "Day 4 / Part 2 / Chakra Meditation")
lesson_5.categories << week_3
lesson_5.user = meditation
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-4-part-2-meditation.jpg"),
  filename: "day-4-part-2-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 3 – Day 4 / Part 2 / Chakra Meditation"
lesson_5.duration = "19:40"
lesson_5.vimeo_url = "https://vimeo.com/513567989"
lesson_5.save!

## Week 3 – Lesson 6
lesson_6 = week_3.lessons.find_or_initialize_by(title: "Day 5 / Go for a walk")
lesson_6.categories << week_3
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-5-walk.jpg"),
  filename: "w3-day5.jpg",
  content_type: "image/jpeg"
)
lesson_6.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-5-walk.m4a"),
  filename: "day-5-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_6.description = "The Postpartum Program – Week 3 – Day 5 / Go for a walk"
lesson_6.duration = "0:22"
lesson_6.save!

## Week 3 – Lesson 7
lesson_7 = week_3.lessons.find_or_initialize_by(title: "Day 6 / Divarication Of Recti: What Is It & How To Recover")
lesson_7.categories << week_3
lesson_7.user = michelle
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-6-information.jpg"),
  filename: "day-6-information.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 3 – Day 6 / Divarication Of Recti: What Is It & How To Recover"
# lesson_7.href = "#{Rails.configuration.website_address}#{Rails.application.routes.url_helpers.dashboard_post_path(Post.find_by(title: "Divarication Of Recti: What Is It & How To Recover").id)}"
lesson_7.save!

## Week 3 – Lesson 8
lesson_8 = week_3.lessons.find_or_initialize_by(title: "Day 7 / Stretch")
lesson_8.categories << week_3
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-3/day-7-stretch.jpg"),
  filename: "day-7-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "The Postpartum Program – Week 3 – Day 7 / Stretch"
lesson_8.duration = "23:27"
lesson_8.vimeo_url = "https://vimeo.com/637352669"
lesson_8.save!
