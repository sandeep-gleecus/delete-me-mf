# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# 5 day challenge
challenge_5_day = challenges_and_programs.children.find_or_initialize_by(title: "5 day challenge")
challenge_5_day.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/5-day-challenge/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
challenge_5_day.category_type = :body
challenge_5_day.description = "Beyond – 5 day challenge"
challenge_5_day.save!

## 5 day challenge – Lesson 1
lesson_1 = challenge_5_day.lessons.find_or_initialize_by(title: "Day 1")
lesson_1.categories << challenge_5_day
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/5-day-challenge/day-1-workout.jpg"),
  filename: "day-1-workout.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 5 day challenge / Day 1"
lesson_1.duration = "28:17"
lesson_1.vimeo_url = "https://vimeo.com/576640549"
lesson_1.save!

## 5 day challenge – Lesson 2
lesson_2 = challenge_5_day.lessons.find_or_initialize_by(title: "Day 2")
lesson_2.categories << challenge_5_day
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/5-day-challenge/day-2-workout.jpg"),
  filename: "day-2-workout.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 5 day challenge / Day 2"
lesson_2.duration = "27:53"
lesson_2.vimeo_url = "https://vimeo.com/577072383"
lesson_2.save!

## 5 day challenge – Lesson 3
lesson_3 = challenge_5_day.lessons.find_or_initialize_by(title: "Day 3")
lesson_3.categories << challenge_5_day
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/5-day-challenge/day-3-workout.jpg"),
  filename: "day-3-workout.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 5 day challenge / Day 3"
lesson_3.duration = "32:04"
lesson_3.vimeo_url = "https://vimeo.com/577494125"
lesson_3.save!

## 5 day challenge – Lesson 4
lesson_4 = challenge_5_day.lessons.find_or_initialize_by(title: "Day 4")
lesson_4.categories << challenge_5_day
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/5-day-challenge/day-4-workout.jpg"),
  filename: "day-4-workout.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 5 day challenge / Day 4"
lesson_4.duration = "29:29"
lesson_4.vimeo_url = "https://vimeo.com/577923589"
lesson_4.save!

## 5 day challenge – Lesson 5
lesson_5 = challenge_5_day.lessons.find_or_initialize_by(title: "Day 5")
lesson_5.categories << challenge_5_day
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/5-day-challenge/day-5-workout.jpg"),
  filename: "day-5-workout.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 5 day challenge / Day 5"
lesson_5.duration = "30:27"
lesson_5.vimeo_url = "https://vimeo.com/578362452"
lesson_5.save!
