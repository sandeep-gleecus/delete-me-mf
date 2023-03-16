# Relationships
new_you = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "New you challenge")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
scar_therapist = User.find_by(email: "c-section-scar-therapist@motherfit.co.uk")
breathwork_facilitator = User.find_by(email: "breathwork-facilitator@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 2
week_2 = new_you.children.find_or_initialize_by(title: "Week 2")
week_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_2.category_type = :body
week_2.description = "Beyond – New you challenge – Week 2"
week_2.save!

## Week 2 – Lesson 1
lesson_1 = week_2.lessons.find_or_initialize_by(title: "Day 8 / Part 1 / Workout with Michelle")
lesson_1.categories << week_2
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-8-part-1-workout.jpg"),
  filename: "day-8-part-1-workout.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – New you challenge – Week 2 – Day 8 / Part 1 / Workout with Michelle"
lesson_1.duration = "37:10"
lesson_1.vimeo_url = "https://vimeo.com/661753030"
lesson_1.save!

## Week 2 – Lesson 2
lesson_2 = week_2.lessons.find_or_initialize_by(title: "Day 8 / Part 2 / Scar therapy")
lesson_2.categories << week_2
lesson_2.user = scar_therapist
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-8-part-2-scar-therapy.jpg"),
  filename: "day-8-part-2-scar-therapy.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – New you challenge – Week 2 – Day 8 / Part 2 / Scar Therapy"
lesson_2.duration = "12:06"
lesson_2.vimeo_url = "https://vimeo.com/661756176"
lesson_2.save!

## Week 2 – Lesson 3
lesson_3 = week_2.lessons.find_or_initialize_by(title: "Day 9 / Part 1 / Breathwork")
lesson_3.categories << week_2
lesson_3.user = breathwork_facilitator
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-9-part-1-breathwork.jpg"),
  filename: "day-9-part-1-breathwork.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – New you challenge – Week 2 – Day 9 / Part 1 / Breathwork"
lesson_3.duration = "3:24"
lesson_3.vimeo_url = "https://vimeo.com/661758551"
lesson_3.save!

## Week 2 – Lesson 4
lesson_4 = week_2.lessons.find_or_initialize_by(title: "Day 9 / Part 2 / Yoga with Abbey")
lesson_4.categories << week_2
lesson_4.user = yoga_instructor
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-9-part-2-yoga.jpg"),
  filename: "day-9-part-2-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – New you challenge – Week 2 – Day 9 / Part 2 / Yoga with Abbey"
lesson_4.duration = "30:35"
lesson_4.vimeo_url = "https://vimeo.com/661915588"
lesson_4.save!

## Week 2 – Lesson 5
lesson_5 = week_2.lessons.find_or_initialize_by(title: "Day 10 / Workout with Michelle")
lesson_5.categories << week_2
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-10-workout.jpg"),
  filename: "day-10-workout.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – New you challenge – Week 2 – Day 10 / Workout with Michelle"
lesson_5.duration = "36:32"
lesson_5.vimeo_url = "https://vimeo.com/661790614"
lesson_5.save!

## Week 2 – Lesson 6
lesson_6 = week_2.lessons.find_or_initialize_by(title: "Day 11 / Core with Michelle")
lesson_6.categories << week_2
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-11-core.jpg"),
  filename: "day-11-core.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – New you challenge – Week 2 – Day 11 / Core with Michelle"
lesson_6.duration = "22:56"
lesson_6.vimeo_url = "https://vimeo.com/661739205"
lesson_6.save!

## Week 2 – Lesson 7
lesson_7 = week_2.lessons.find_or_initialize_by(title: "Day 12 / Workout with Michelle")
lesson_7.categories << week_2
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-12-workout.jpg"),
  filename: "day-12-workout.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – New you challenge – Week 2 – Day 12 / Workout with Michelle"
lesson_7.duration = "45:39"
lesson_7.vimeo_url = "https://vimeo.com/661760643"
lesson_7.save!

## Week 2 – Lesson 8
lesson_8 = week_2.lessons.find_or_initialize_by(title: "Day 13 / Yoga with Abbey")
lesson_8.categories << week_2
lesson_8.user = yoga_instructor
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-13-yoga.jpg"),
  filename: "day-13-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – New you challenge – Week 2 – Day 13 / Yoga with Abbey"
lesson_8.duration = "30:36"
lesson_8.vimeo_url = "https://vimeo.com/665197359"
lesson_8.save!

## Week 2 – Lesson 9
lesson_9 = week_2.lessons.find_or_initialize_by(title: "Day 14 / Workout with Michelle")
lesson_9.categories << week_2
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/day-14-workout.jpg"),
  filename: "day-14-workout.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – New you challenge – Week 2 – Day 14 / Workout with Michelle"
lesson_9.duration = "45:19"
lesson_9.vimeo_url = "https://vimeo.com/661776904"
lesson_9.save!

## Week 2 – Lesson 10
lesson_10 = week_2.lessons.find_or_initialize_by(title: "Congratulations!")
lesson_10.categories << week_2
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-2/completed.jpg"),
  filename: "completed.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – New you challenge – Week 2 / Congratulations!"
lesson_10.duration = "1:35"
lesson_10.vimeo_url = "https://vimeo.com/666744054"
lesson_10.save!
