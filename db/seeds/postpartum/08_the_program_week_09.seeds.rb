# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
first_aid = User.find_by(email: "first-aid@motherfit.co.uk")
childrens_emotional_wellbeing = User.find_by(email: "childrens-emotional-wellbeing@motherfit.co.uk")

# Week 9
week_9 = the_program.children.find_or_initialize_by(title: "Week 9")
week_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_9.category_type = :body
week_9.description = "The Postpartum Program – Week 9"
week_9.save!

## Week 9 – Lesson 1
lesson_1 = week_9.lessons.find_or_initialize_by(title: "Day 1 / Workout 1")
lesson_1.categories << week_9
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-1-workout-1.jpg"),
  filename: "day-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 9 – Day 1 / Workout 1"
lesson_1.duration = "39:05"
lesson_1.vimeo_url = "https://vimeo.com/639847259"
lesson_1.save!

## Week 9 – Lesson 2
lesson_2 = week_9.lessons.find_or_initialize_by(title: "Day 2 / Babies – CPR")
lesson_2.categories << week_9
lesson_2.user = first_aid
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-2-first-aid.jpg"),
  filename: "day-2-first-aid.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 9 – Day 2 / Babies – CPR"
lesson_2.duration = "5:40"
lesson_2.vimeo_url = "https://vimeo.com/540365947"
lesson_2.save!

## Week 9 – Lesson 3
lesson_3 = week_9.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_3.categories << week_9
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 9 – Day 3 / Workout 2"
lesson_3.duration = "38:00"
lesson_3.vimeo_url = "https://vimeo.com/639850564"
lesson_3.save!

## Week 9 – Lesson 4
lesson_4 = week_9.lessons.find_or_initialize_by(title: "Day 4 / Childrens emotional wellbeing")
lesson_4.categories << week_9
lesson_4.user = childrens_emotional_wellbeing
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-4-childrens-emotional-wellbeing.jpg"),
  filename: "day-4-childrens-emotional-wellbeing.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 9 – Day 4 / Childrens emotional wellbeing"
lesson_4.duration = "24:46"
lesson_4.vimeo_url = "https://vimeo.com/527512633"
lesson_4.save!

## Week 9 – Lesson 5
lesson_5 = week_9.lessons.find_or_initialize_by(title: "Day 5 / Workout 3 & Stretch")
lesson_5.categories << week_9
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-5-workout-3-stretch.jpg"),
  filename: "day-5-workout-3-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 9 – Day 5 / Workout 3 & Stretch"
lesson_5.duration = "40:40"
lesson_5.vimeo_url = "https://vimeo.com/639853984"
lesson_5.save!

## Week 9 – Lesson 6
lesson_6 = week_9.lessons.find_or_initialize_by(title: "Day 6 / Healthy breakfast for kids")
lesson_6.categories << week_9
lesson_6.user = michelle
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-6-recipes.jpg"),
  filename: "day-6-recipes.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "The Postpartum Program – Week 9 – Day 6 / Healthy breakfast for kids"
lesson_6.save!

## Week 9 – Lesson 7
lesson_7 = week_9.lessons.find_or_initialize_by(title: "Day 7 / Workout 4")
lesson_7.categories << week_9
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-7-workout-4.jpg"),
  filename: "day-7-workout-4.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 9 – Day 7 / Workout 4"
lesson_7.duration = "48:38"
lesson_7.vimeo_url = "https://vimeo.com/639857462"
lesson_7.save!

## Week 9 – Lesson 8
lesson_8 = week_9.lessons.find_or_initialize_by(title: "Day 7 / Congratulations and what next?")
lesson_8.categories << week_9
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-7-congratulations.jpg"),
  filename: "day-7-congratulations.jpg",
  content_type: "image/jpeg"
)
lesson_8.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-9/day-7-congratulations.m4a"),
  filename: "day-7-congratulations.m4a",
  content_type: "attachment/m4a"
)
lesson_8.description = "The Postpartum Program – Week 9 – Day 7 / Congratulations and what next?"
lesson_8.duration = "0:37"
lesson_8.save!
