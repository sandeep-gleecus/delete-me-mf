# Relationships
beginner = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge").children.find_by(title: "Beginner")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Beginner – Week 2
beginner_week_2 = beginner.children.find_or_initialize_by(title: "Week 2")
beginner_week_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
beginner_week_2.category_type = :body
beginner_week_2.description = "Beyond – 28 day beginner challenge – Week 2"
beginner_week_2.save!

## Week 2 – Lesson 1
lesson_1 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 8 / Workout fat burner +")
lesson_1.categories << beginner_week_2
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-8-fat-burner.jpg"),
  filename: "day-8-fat-burner.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 8 / Workout fat burner +"
lesson_1.duration = "34:41"
lesson_1.vimeo_url = "https://vimeo.com/603908884"
lesson_1.save!

## Week 2 – Lesson 2
lesson_2 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 9 / Rest and recover")
lesson_2.categories << beginner_week_2
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-9-rest-recover.jpg"),
  filename: "day-9-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 9 / Rest and recover"
lesson_2.duration = "0:00"
lesson_2.vimeo_url = ""
lesson_2.save!

## Week 2 – Lesson 3
lesson_3 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 10 / Workout lower body")
lesson_3.categories << beginner_week_2
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-10-lower-body-strength.jpg"),
  filename: "day-10-lower-body-strength.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 10 / Workout lower body"
lesson_3.duration = "28:22"
lesson_3.vimeo_url = "https://vimeo.com/605414897"
lesson_3.save!

## Week 2 – Lesson 4
lesson_4 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 11 / Workout upper body")
lesson_4.categories << beginner_week_2
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-11-upper-body-burn.jpg"),
  filename: "day-11-upper-body-burn.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 11 / Workout upper body"
lesson_4.duration = "38:57"
lesson_4.vimeo_url = "https://vimeo.com/606411553"
lesson_4.save!

## Week 2 – Lesson 5
lesson_5 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 12 / Part 1 / Workout stamina")
lesson_5.categories << beginner_week_2
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-12-part-1-stamina.jpg"),
  filename: "day-12-part-1-stamina.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 12 / Part 1 / Workout stamina"
lesson_5.duration = "20:10"
lesson_5.vimeo_url = "https://vimeo.com/607191453"
lesson_5.save!

## Week 2 – Lesson 6
lesson_6 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 12 / Part 2 / Stretch")
lesson_6.categories << beginner_week_2
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-12-part-2-stretch.jpg"),
  filename: "day-12-part-2-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 12 / Part 2 / Stretch"
lesson_6.duration = "19:17"
lesson_6.vimeo_url = "https://vimeo.com/607204629"
lesson_6.save!

## Week 2 – Lesson 7
lesson_7 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 13 / Rest and recover")
lesson_7.categories << beginner_week_2
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-13-rest-recover.jpg"),
  filename: "day-13-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 13 / Rest and recover"
lesson_7.duration = "0:00"
lesson_7.vimeo_url = ""
lesson_7.save!

## Week 2 – Lesson 8
lesson_8 = beginner_week_2.lessons.find_or_initialize_by(title: "Week 2 / Day 14 / Rest and recover")
lesson_8.categories << beginner_week_2
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/week-2/day-14-rest-recover.jpg"),
  filename: "day-14-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – 28 day challenge – Beginner – Week 2 – Day 14 / Rest and recover"
lesson_8.duration = "0:00"
lesson_8.vimeo_url = ""
lesson_8.save!
