# Relationships
new_you = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "New you challenge")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")
breathwork_facilitator = User.find_by(email: "breathwork-facilitator@motherfit.co.uk")
confidence_coach = User.find_by(email: "confidence-coach@motherfit.co.uk")

# Week 1
week_1 = new_you.children.find_or_initialize_by(title: "Week 1")
week_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_1.category_type = :body
week_1.description = "Beyond – New you challenge – Week 1"
week_1.save!

## Week 1 – Lesson 1
lesson_1 = week_1.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << week_1
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – New you challenge – Week 1 / Introduction"
lesson_1.duration = "2:25"
lesson_1.vimeo_url = "https://vimeo.com/662298016"
lesson_1.save!

## Week 1 – Lesson 2
lesson_2 = week_1.lessons.find_or_initialize_by(title: "Day 1 / Workout with Michelle")
lesson_2.categories << week_1
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-1-workout.jpg"),
  filename: "day-1-workout.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – New you challenge – Week 1 – Day 1 / Workout with Michelle"
lesson_2.duration = "42:29"
lesson_2.vimeo_url = "https://vimeo.com/661740849"
lesson_2.save!

## Week 1 – Lesson 3
lesson_3 = week_1.lessons.find_or_initialize_by(title: "Day 2 / Part 1 / Yoga with Abbey")
lesson_3.categories << week_1
lesson_3.user = yoga_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-2-part-1-yoga.jpg"),
  filename: "day-2-part-1-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – New you challenge – Week 1 – Day 2 / Part 1 / Yoga with Abbey"
lesson_3.duration = "31:02"
lesson_3.vimeo_url = "https://vimeo.com/661926020"
lesson_3.save!

## Week 1 – Lesson 4
lesson_4 = week_1.lessons.find_or_initialize_by(title: "Day 2 / Part 2 / Breathwork")
lesson_4.categories << week_1
lesson_4.user = breathwork_facilitator
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-2-part-2-breathwork.jpg"),
  filename: "day-2-part-2-breathwork.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – New you challenge – Week 1 – Day 2 / Part 2 / Breathwork"
lesson_4.duration = "12:52"
lesson_4.vimeo_url = "https://vimeo.com/661758784"
lesson_4.save!

## Week 1 – Lesson 5
lesson_5 = week_1.lessons.find_or_initialize_by(title: "Day 3 / Workout with Michelle")
lesson_5.categories << week_1
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-3-workout.jpg"),
  filename: "day-3-workout.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – New you challenge – Week 1 – Day 3 / Workout with Michelle"
lesson_5.duration = "37:26"
lesson_5.vimeo_url = "https://vimeo.com/661743517"
lesson_5.save!

## Week 1 – Lesson 6
lesson_6 = week_1.lessons.find_or_initialize_by(title: "Day 4 / Part 1 / Core with Michelle")
lesson_6.categories << week_1
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-4-part-1-core.jpg"),
  filename: "day-4-part-1-core.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – New you challenge – Week 1 – Day 4 / Part 1 / Core with Michelle"
lesson_6.duration = "21:36"
lesson_6.vimeo_url = "https://vimeo.com/661736995"
lesson_6.save!

## Week 1 – Lesson 7
lesson_7 = week_1.lessons.find_or_initialize_by(title: "Day 4 / Part 2 / Confidence – Love your body")
lesson_7.categories << week_1
lesson_7.user = confidence_coach
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-4-part-2-confidence.jpg"),
  filename: "day-4-part-2-confidence.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – New you challenge – Week 1 – Day 4 / Part 2 / Confidence Coach 'Love your body'"
lesson_7.duration = "33:37"
lesson_7.vimeo_url = "https://vimeo.com/662744475"
lesson_7.save!

## Week 1 – Lesson 8
lesson_8 = week_1.lessons.find_or_initialize_by(title: "Day 5 / Workout with Michelle")
lesson_8.categories << week_1
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-5-workout.jpg"),
  filename: "day-5-workout.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – New you challenge – Week 1 – Day 5 / Workout with Michelle"
lesson_8.duration = "42:35"
lesson_8.vimeo_url = "https://vimeo.com/661745693"
lesson_8.save!

## Week 1 – Lesson 9
lesson_9 = week_1.lessons.find_or_initialize_by(title: "Day 6 / Part 1 / Yoga with Abbey")
lesson_9.categories << week_1
lesson_9.user = yoga_instructor
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-6-part-1-yoga.jpg"),
  filename: "day-6-part-1-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – New you challenge – Week 1 – Day 6 / Part 1 / Yoga with Abbey"
lesson_9.duration = "31:00"
lesson_9.vimeo_url = "https://vimeo.com/661919396"
lesson_9.save!

## Week 1 – Lesson 10
lesson_10 = week_1.lessons.find_or_initialize_by(title: "Day 6 / Part 2 / Confidence – Leading lady")
lesson_10.categories << week_1
lesson_10.user = confidence_coach
lesson_10.lesson_type = :mind
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-6-part-2-confidence.jpg"),
  filename: "day-6-part-2-confidence.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – New you challenge – Week 1 – Day 6 / Part 2 / Confidence Coach 'Leading lady'"
lesson_10.duration = "26:30"
lesson_10.vimeo_url = "https://vimeo.com/662744834"
lesson_10.save!

## Week 1 – Lesson 11
lesson_11 = week_1.lessons.find_or_initialize_by(title: "Day 7 / Part 1 / Workout with Michelle")
lesson_11.categories << week_1
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-7-part-1-workout.jpg"),
  filename: "day-7-part-1-workout.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – New you challenge – Week 1 – Day 7 / Part 1 / Workout with Michelle"
lesson_11.duration = "42:30"
lesson_11.vimeo_url = "https://vimeo.com/661749109"
lesson_11.save!

## Week 1 – Lesson 12
lesson_12 = week_1.lessons.find_or_initialize_by(title: "Day 7 / Part 2 / Breathwork")
lesson_12.categories << week_1
lesson_12.user = breathwork_facilitator
lesson_12.lesson_type = :mind
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/week-1/day-7-part-2-breathwork.jpg"),
  filename: "day-7-part-2-breathwork.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – New you challenge – Week 1 – Day 7 / Part 2 / Breathwork"
lesson_12.duration = "12:25"
lesson_12.vimeo_url = "https://vimeo.com/661757572"
lesson_12.save!
