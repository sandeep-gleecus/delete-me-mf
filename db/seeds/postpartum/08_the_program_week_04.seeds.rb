# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
confidence_coach = User.find_by(email: "confidence-coach@motherfit.co.uk")
meditation = User.find_by(email: "meditation@motherfit.co.uk")

# Week 4
week_4 = the_program.children.find_or_initialize_by(title: "Week 4")
week_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_4.category_type = :body
week_4.description = "The Postpartum Program – Week 4"
week_4.save!

## Week 4 – Lesson 1
lesson_1 = week_4.lessons.find_or_initialize_by(title: "Day 1 / Workout 1")
lesson_1.categories << week_4
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-1-workout-1.jpg"),
  filename: "day-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 4 – Day 1 / Workout 1"
lesson_1.duration = "30:11"
lesson_1.vimeo_url = "https://vimeo.com/637873366"
lesson_1.save!

## Week 4 – Lesson 2
lesson_2 = week_4.lessons.find_or_initialize_by(title: "Day 2 / Part 1 / Yoga 'Core'")
lesson_2.categories << week_4
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-2-part-1-yoga.jpg"),
  filename: "day-2-part-1-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 4 – Day 2 / Part 1 / Yoga 'Core'"
lesson_2.duration = "23:06"
lesson_2.vimeo_url = "https://vimeo.com/646816255"
lesson_2.save!

## Week 4 – Lesson 3
lesson_3 = week_4.lessons.find_or_initialize_by(title: "Day 2 / Part 2 / Confidence Coach 'Love your body!'")
lesson_3.categories << week_4
lesson_3.user = confidence_coach
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-2-part-2-confidence-coach.jpg"),
  filename: "day-2-part-2-confidence-coach.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 4 – Day 2 / Part 2 / Confidence Coach 'Love your body!'"
lesson_3.duration = "33:37"
lesson_3.vimeo_url = "https://vimeo.com/666773980"
lesson_3.save!

## Week 4 – Lesson 4
lesson_4 = week_4.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_4.categories << week_4
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 4 – Day 3 / Workout 2"
lesson_4.duration = "30:08"
lesson_4.vimeo_url = "https://vimeo.com/637877559"
lesson_4.save!

## Week 4 – Lesson 5
lesson_5 = week_4.lessons.find_or_initialize_by(title: "Day 4 / Gratitude Meditation")
lesson_5.categories << week_4
lesson_5.user = meditation
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-4-meditation.jpg"),
  filename: "day-4-meditation.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 4 – Day 4 / Gratitude Meditation"
lesson_5.duration = "11:17"
lesson_5.vimeo_url = "https://vimeo.com/513587458"
lesson_5.save!

## Week 4 – Lesson 6
lesson_6 = week_4.lessons.find_or_initialize_by(title: "Day 5 / Go for a walk")
lesson_6.categories << week_4
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-5-walk.jpg"),
  filename: "day-5-walk.jpg",
  content_type: "image/jpeg"
)
lesson_6.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-5-walk.m4a"),
  filename: "day-5-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_6.description = "The Postpartum Program – Week 4 – Day 5 / Go for a walk"
lesson_6.duration = "0:08"
lesson_6.save!

## Week 4 – Lesson 7
lesson_7 = week_4.lessons.find_or_initialize_by(title: "Day 6 / Workout 3 & Stretch")
lesson_7.categories << week_4
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-6-workout-3-stretch.jpg"),
  filename: "day-6-workout-3-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 4 – Day 6 / Workout 3 & Stretch"
lesson_7.duration = "41:01"
lesson_7.vimeo_url = "https://vimeo.com/637881877"
lesson_7.save!

## Week 4 – Lesson 8
lesson_8 = week_4.lessons.find_or_initialize_by(title: "Day 7 / Create a Positive Mindset (LIVE Chat)")
lesson_8.categories << week_4
lesson_8.user = michelle
lesson_8.lesson_type = :mind
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-4/day-7-recorded-chat.jpg"),
  filename: "day-7-recorded-chat.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "The Postpartum Program – Week 4 – Day 7 / Create a Positive Mindset (LIVE Chat)"
lesson_8.duration = "1:34:01"
lesson_8.vimeo_url = "https://vimeo.com/604904815"
lesson_8.save!
