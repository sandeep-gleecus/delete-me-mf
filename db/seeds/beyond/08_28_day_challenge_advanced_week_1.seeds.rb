# Relationships
advanced = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge").children.find_by(title: "Advanced")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Advanced – Week 1
advanced_week_1 = advanced.children.find_or_initialize_by(title: "Week 1")
advanced_week_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
advanced_week_1.category_type = :body
advanced_week_1.description = "Beyond – 28 day advanced challenge – Week 1"
advanced_week_1.save!

## Week 1 – Lesson 1
lesson_1 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 1 / Part 1 / Workout fat burner and introduction")
lesson_1.categories << advanced_week_1
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-1-part-1-fat-burner.jpg"),
  filename: "day-1-part-1-fat-burner.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 28 day challenge – Advanced – Week 1 / Day 1 / Part 1 / Workout fat burner and introduction"
lesson_1.duration = "29:04"
lesson_1.vimeo_url = "https://vimeo.com/598812894"
lesson_1.save!

## Week 1 – Lesson 2
lesson_2 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 1 / Part 2 – Nutrition live chat")
lesson_2.categories << advanced_week_1
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-1-part-2-nutrition-chat.jpg"),
  filename: "day-1-part-2-nutrition-chat.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 1 / Part 2 / Nutrition live chat"
lesson_2.duration = "55:02"
lesson_2.vimeo_url = "https://vimeo.com/600015824"
lesson_2.save!

## Week 1 – Lesson 3
lesson_3 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 2 / Workout fat burner+")
lesson_3.categories << advanced_week_1
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-2-fat-burner-plus.jpg"),
  filename: "day-2-fat-burner-plus.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 28 day challenge – Advanced – Week 1 / Day 2 / Workout fat burner+"
lesson_3.duration = "35:07"
lesson_3.vimeo_url = "https://vimeo.com/599362452"
lesson_3.save!

## Week 1 – Lesson 4
lesson_4 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 3 / Workout lower body")
lesson_4.categories << advanced_week_1
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-3-lower-body-strength.jpg"),
  filename: "day-3-lower-body-strength.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 3 / Workout lower body"
lesson_4.duration = "40:26"
lesson_4.vimeo_url = "https://vimeo.com/600069574"
lesson_4.save!

## Week 1 – Lesson 5
lesson_5 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 4 / Part 1 / Workout arms and abs")
lesson_5.categories << advanced_week_1
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-4-part-1-arms-arbs.jpg"),
  filename: "day-4-part-1-arms-arbs.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 4 / Part 1 / Workout arms and abs"
lesson_5.duration = "26:03"
lesson_5.vimeo_url = "https://vimeo.com/600806742"
lesson_5.save!

## Week 1 – Lesson 6
lesson_6 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 4 / Part 2 / Workout upper body")
lesson_6.categories << advanced_week_1
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-4-part-2-upper-body-burn.jpg"),
  filename: "day-4-part-2-upper-body-burn.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 4 / Part 2 / Workout upper body"
lesson_6.duration = "30:50"
lesson_6.vimeo_url = "https://vimeo.com/601226831"
lesson_6.save!

## Week 1 – Lesson 7
lesson_7 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 5 / Part 1 / Workout stamina")
lesson_7.categories << advanced_week_1
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-5-part-1-stamina.jpg"),
  filename: "day-5-part-1-stamina.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – 28 day challenge – Advanced – Week 1 / Day 5 / Part 1 / Workout stamina"
lesson_7.duration = "21:35"
lesson_7.vimeo_url = "https://vimeo.com/601627942"
lesson_7.save!

## Week 1 – Lesson 8
lesson_8 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 5 / Part 2 / Stretch")
lesson_8.categories << advanced_week_1
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-5-part-2-stretch.jpg"),
  filename: "day-5-part-2-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 5 / Part 2 / Stretch"
lesson_8.duration = "13:10"
lesson_8.vimeo_url = "https://vimeo.com/601637839"
lesson_8.save!

## Week 1 – Lesson 9
lesson_9 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 6 / Workout boxing")
lesson_9.categories << advanced_week_1
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-6-stress-busting-boxing.jpg"),
  filename: "day-6-stress-busting-boxing.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 6 / Workout boxing"
lesson_9.duration = "61:28"
lesson_9.vimeo_url = "https://vimeo.com/602502582"
lesson_9.save!

## Week 1 – Lesson 10
lesson_10 = advanced_week_1.lessons.find_or_initialize_by(title: "Week 1 / Day 7 / Rest and recover")
lesson_10.categories << advanced_week_1
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/week-1/day-7-rest-recover.jpg"),
  filename: "day-7-rest-recover.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – 28 day challenge – Advanced – Week 1 – Day 7 / Rest and recover"
lesson_10.duration = "0:00"
lesson_10.vimeo_url = ""
lesson_10.save!
