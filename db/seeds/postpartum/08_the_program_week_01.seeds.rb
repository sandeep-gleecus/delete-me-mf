# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
meditation = User.find_by(email: "meditation@motherfit.co.uk")
pelvic_health = User.find_by(email: "pelvic-health@motherfit.co.uk")
breathwork_facilitator = User.find_by(email: "breathwork-facilitator@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 1
week_1 = the_program.children.find_or_initialize_by(title: "Week 1")
week_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_1.category_type = :body
week_1.description = "The Postpartum Program – Week 1"
week_1.save!

## Week 1 – Lesson 1
lesson_1 = week_1.lessons.find_or_initialize_by(title: "Day 1 / Part 1 / Workout 1")
lesson_1.categories << week_1
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-1-part-1-workout-1.jpg"),
  filename: "day-1-part-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 1 – Day 1 / Part 1 / Workout 1"
lesson_1.duration = "24:33"
lesson_1.vimeo_url = "https://vimeo.com/637242928"
lesson_1.save!

## Week 1 – Lesson 2
lesson_2 = week_1.lessons.find_or_initialize_by(title: "Day 1 / Part 2 / Affirmation Meditation")
lesson_2.categories << week_1
lesson_2.user = meditation
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-1-part-2-meditation-1.jpg"),
  filename: "day-1-part-2-meditation-1.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 1 – Day 1 / Part 2 / Affirmation Meditation"
lesson_2.duration = "8:43"
lesson_2.vimeo_url = "https://vimeo.com/513467258"
lesson_2.save!

## Week 1 – Lesson 3
lesson_3 = week_1.lessons.find_or_initialize_by(title: "Day 2 / Pelvic Health, After Baby is Born")
lesson_3.categories << week_1
lesson_3.user = pelvic_health
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-2-pelvic-health.jpg"),
  filename: "day-2-pelvic-health.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "The Postpartum Program – Week 1 – Day 2 / Pelvic Health, After Baby is Born"
lesson_3.duration = "8:24"
lesson_3.vimeo_url = "https://vimeo.com/534178914"
lesson_3.save!

## Week 1 – Lesson 4
lesson_4 = week_1.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_4.categories << week_1
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 1 – Day 3 / Workout 2"
lesson_4.duration = "22:04"
lesson_4.vimeo_url = "https://vimeo.com/637240547"
lesson_4.save!

## Week 1 – Lesson 5
lesson_5 = week_1.lessons.find_or_initialize_by(title: "Day 4 / Part 1 / Breathwork for Resilance")
lesson_5.categories << week_1
lesson_5.user = breathwork_facilitator
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-4-part-1-breathwork.jpg"),
  filename: "day-4-part-1-breathwork.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 1 – Day 4 / Part 1 / Breathwork for Resilance"
lesson_5.duration = "12:52"
lesson_5.vimeo_url = "https://vimeo.com/655595111"
lesson_5.save!

## Week 1 – Lesson 6
lesson_6 = week_1.lessons.find_or_initialize_by(title: "Day 4 / Part 2 / Yoga")
lesson_6.categories << week_1
lesson_6.user = yoga_instructor
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-4-part-2-yoga.jpg"),
  filename: "day-4-part-2-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "The Postpartum Program – Week 1 – Day 4 / Part 2 / Yoga"
lesson_6.duration = "22:49"
lesson_6.vimeo_url = "https://vimeo.com/671229445"
lesson_6.save!

## Week 1 – Lesson 7
lesson_7 = week_1.lessons.find_or_initialize_by(title: "Day 5 / Join our community")
lesson_7.categories << week_1
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-5-facebook.jpg"),
  filename: "day-5-facebook.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Come and join the Mother Fit Community on Facebook! Meet some mums going through the same process as you!"
lesson_7.save!

## Week 1 – Lesson 8
lesson_8 = week_1.lessons.find_or_initialize_by(title: "Day 6 / Recipes to Nourish")
lesson_8.categories << week_1
lesson_8.user = michelle
lesson_8.lesson_type = :mind
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-6-recipes-to-nourish.jpg"),
  filename: "day-6-recipes-to-nourish.jpg",
  content_type: "image/jpeg"
)
lesson_8.resource.attach(
  io: File.open("app/assets/images/seeds/shared/meals-to-nourish-you.pdf"),
  filename: "meals-to-nourish-you.pdf",
  content_type: "application/pdf"
)
lesson_8.description = "The Postpartum Program – Week 1 – Day 6 / Recipes to Nourish"
lesson_8.save!

## Week 1 – Lesson 9
lesson_9 = week_1.lessons.find_or_initialize_by(title: "Day 7 / Part 1 / Stretch")
lesson_9.categories << week_1
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-7-part-1-stretch.jpg"),
  filename: "day-7-part-1-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "The Postpartum Program – Week 1 – Day 7 / Part 1 / Stretch"
lesson_9.duration = "9:34"
lesson_9.vimeo_url = "https://vimeo.com/637239530"
lesson_9.save!

## Week 1 – Lesson 10
lesson_10 = week_1.lessons.find_or_initialize_by(title: "Day 7 / Part 2 / Go for a walk and listen to calming music")
lesson_10.categories << week_1
lesson_10.user = michelle
lesson_10.lesson_type = :mind
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-7-part-2-walk.jpg"),
  filename: "day-7-part-2-walk.jpg",
  content_type: "image/jpeg"
)
lesson_10.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-1/day-7-part-2-walk.m4a"),
  filename: "day-7-part-2-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_10.description = "The Postpartum Program – Week 1 – Day 7 / Part 2 / Go for a walk and listen to calming music"
lesson_10.duration = "0:06"
lesson_10.save!
