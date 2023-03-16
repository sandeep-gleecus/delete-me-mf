# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
confidence_coach = User.find_by(email: "confidence-coach@motherfit.co.uk")
scar_therapist = User.find_by(email: "c-section-scar-therapist@motherfit.co.uk")

# Week 5
week_5 = the_program.children.find_or_initialize_by(title: "Week 5")
week_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_5.category_type = :body
week_5.description = "The Postpartum Program – Week 5"
week_5.save!

## Week 5 – Lesson 1
lesson_1 = week_5.lessons.find_or_initialize_by(title: "Day 1 / Part 1 / Workout 1")
lesson_1.categories << week_5
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-1-part-1-workout-1.jpg"),
  filename: "day-1-part-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 5 – Day 1 / Part 1 / Workout 1"
lesson_1.duration = "28:27"
lesson_1.vimeo_url = "https://vimeo.com/637887867"
lesson_1.save!

## Week 5 – Lesson 2
lesson_2 = week_5.lessons.find_or_initialize_by(title: "Day 1 / Part 2 / Go for an interval walk")
lesson_2.categories << week_5
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-1-part-2-walk.jpg"),
  filename: "day-1-part-2-walk.jpg",
  content_type: "image/jpeg"
)
lesson_2.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-1-part-2-walk.m4a"),
  filename: "day-1-part-2-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_2.description = "The Postpartum Program – Week 5 – Day 1 / Part 2 / Go for an interval walk"
lesson_2.duration = "0:16"
lesson_2.save!

## Week 5 – Lesson 3
lesson_3 = week_5.lessons.find_or_initialize_by(title: "Day 2 / Replay Breath, Move & Press")
lesson_3.categories << week_5
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-2-replay-breath-move-press.jpg"),
  filename: "day-2-replay-breath-move-press.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 5 – Day 2 / Replay Breath, Move & Press"
lesson_3.duration = "22:27"
lesson_3.vimeo_url = "https://vimeo.com/635983112"
lesson_3.save!

## Week 5 – Lesson 4
lesson_4 = week_5.lessons.find_or_initialize_by(title: "Day 3 / Part 1 / Refer a Friend")
lesson_4.categories << week_5
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-3-part-1-share.jpg"),
  filename: "day-3-part-1-share.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 5 – Day 3 / Part 1 / Refer a Friend"
lesson_4.save!

## Week 5 – Lesson 5
lesson_5 = week_5.lessons.find_or_initialize_by(title: "Day 3 / Part 2 / Confidence Coach 'Leading Lady'")
lesson_5.categories << week_5
lesson_5.user = confidence_coach
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-3-part-2-confidence-coach.jpg"),
  filename: "day-3-part-2-confidence-coach.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 5 – Day 3 / Part 2 / Confidence Coach 'Leading Lady'"
lesson_5.duration = "26:30"
lesson_5.vimeo_url = "https://vimeo.com/666774757"
lesson_5.save!

## Week 5 – Lesson 6
lesson_6 = week_5.lessons.find_or_initialize_by(title: "Day 4 / Workout 2")
lesson_6.categories << week_5
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-4-workout-2.jpg"),
  filename: "day-4-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "The Postpartum Program – Week 5 – Day 4 / Workout 2"
lesson_6.duration = "32:13"
lesson_6.vimeo_url = "https://vimeo.com/637891910"
lesson_6.save!

## Week 5 – Lesson 7
lesson_7 = week_5.lessons.find_or_initialize_by(title: "Day 5 / Scar Therapy")
lesson_7.categories << week_5
lesson_7.user = scar_therapist
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-5-scar-therapy.jpg"),
  filename: "day-5-scar-therapy.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 5 – Day 5 / Scar Therapy"
lesson_7.duration = "5:53"
lesson_7.vimeo_url = "https://vimeo.com/655594288"
lesson_7.save!

## Week 5 – Lesson 8
lesson_8 = week_5.lessons.find_or_initialize_by(title: "Day 6 / Workout 3 & Stretch")
lesson_8.categories << week_5
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-6-workout-3-stretch.jpg"),
  filename: "day-6-workout-3-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "The Postpartum Program – Week 5 – Day 6 / Workout 3 & Stretch"
lesson_8.duration = "34:56"
lesson_8.vimeo_url = "https://vimeo.com/637896649"
lesson_8.save!

## Week 5 – Lesson 9
lesson_9 = week_5.lessons.find_or_initialize_by(title: "Day 7 / Go for an interval walk")
lesson_9.categories << week_5
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-7-walk.jpg"),
  filename: "day-7-walk.jpg",
  content_type: "image/jpeg"
)
lesson_9.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-5/day-7-walk.m4a"),
  filename: "day-7-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_9.description = "The Postpartum Program – Week 5 – Day 7 / Go for an interval walk"
lesson_9.duration = "0:16"
lesson_9.save!
