# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# 7 day challenge
challenge_7_day = challenges_and_programs.children.find_or_initialize_by(title: "7 day challenge")
challenge_7_day.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
challenge_7_day.category_type = :body
challenge_7_day.description = "Beyond – 7 day challenge"
challenge_7_day.save!

## 7 day challenge – Lesson 1
lesson_1 = challenge_7_day.lessons.find_or_initialize_by(title: "Day 1")
lesson_1.categories << challenge_7_day
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/day-1-workout.jpg"),
  filename: "day-1-workout.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 7 day challenge / Day 1"
lesson_1.duration = "54:40"
lesson_1.vimeo_url = "https://vimeo.com/568384152"
lesson_1.save!

## 7 day challenge – Lesson 2
lesson_2 = challenge_7_day.lessons.find_or_initialize_by(title: "Day 2")
lesson_2.categories << challenge_7_day
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/day-2-workout.jpg"),
  filename: "day-2-workout.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 7 day challenge / Day 2"
lesson_2.duration = "59:26"
lesson_2.vimeo_url = "https://vimeo.com/568852955"
lesson_2.save!

## 7 day challenge – Lesson 3
lesson_3 = challenge_7_day.lessons.find_or_initialize_by(title: "Day 3")
lesson_3.categories << challenge_7_day
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/day-3-workout.jpg"),
  filename: "day-3-workout.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 7 day challenge / Day 3"
lesson_3.duration = "57:37"
lesson_3.vimeo_url = "https://vimeo.com/569323920"
lesson_3.save!

## 7 day challenge – Lesson 4
lesson_4 = challenge_7_day.lessons.find_or_initialize_by(title: "Day 4")
lesson_4.categories << challenge_7_day
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/day-4-workout.jpg"),
  filename: "day-4-workout.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 7 day challenge / Day 4"
lesson_4.duration = "58:12"
lesson_4.vimeo_url = "https://vimeo.com/569795211"
lesson_4.save!

## 7 day challenge – Lesson 5
lesson_5 = challenge_7_day.lessons.find_or_initialize_by(title: "Day 5")
lesson_5.categories << challenge_7_day
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/day-5-workout.jpg"),
  filename: "day-5-workout.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 7 day challenge / Day 5"
lesson_5.duration = "25:39"
lesson_5.vimeo_url = "https://vimeo.com/570183003"
lesson_5.save!

## 7 day challenge – Lesson 6
lesson_6 = challenge_7_day.lessons.find_or_initialize_by(title: "Day 6")
lesson_6.categories << challenge_7_day
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/7-day-challenge/day-6-workout.jpg"),
  filename: "day-6-workout.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – 7 day challenge / Day 6"
lesson_6.duration = "64:12"
lesson_6.vimeo_url = "https://vimeo.com/570606227"
lesson_6.save!
