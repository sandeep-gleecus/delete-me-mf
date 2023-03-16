# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Arms and abs
arms_and_abs = workouts.children.find_or_initialize_by(title: "Arms and abs")
arms_and_abs.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
arms_and_abs.category_type = :body
arms_and_abs.description = "Beyond – Workouts / Arms and abs"
arms_and_abs.save!

## Lesson 1
lesson_1 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #01")
lesson_1.categories << arms_and_abs
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-1.jpg"),
  filename: "workout-arms-abs-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – Arms and abs / Arms and abs #1"
lesson_1.duration = "21:14"
lesson_1.vimeo_url = "https://vimeo.com/631760888"
lesson_1.save!

## Lesson 2
lesson_2 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #02")
lesson_2.categories << arms_and_abs
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-2.jpg"),
  filename: "workout-arms-abs-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – Arms and abs / Arms and abs #2"
lesson_2.duration = "27.46"
lesson_2.vimeo_url = "https://vimeo.com/625227681"
lesson_2.save!

## Lesson 3
lesson_3 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #03")
lesson_3.categories << arms_and_abs
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-3.jpg"),
  filename: "workout-arms-abs-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – Arms and abs / Arms and abs #3"
lesson_3.duration = "18.51"
lesson_3.vimeo_url = "https://vimeo.com/642254477"
lesson_3.save!

## Lesson 4
lesson_4 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #04")
lesson_4.categories << arms_and_abs
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-4.jpg"),
  filename: "workout-arms-abs-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – Arms and abs / Arms and abs #4"
lesson_4.duration = "20.59"
lesson_4.vimeo_url = "https://vimeo.com/644708131"
lesson_4.save!

## Lesson 5
lesson_5 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #05")
lesson_5.categories << arms_and_abs
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-5.jpg"),
  filename: "workout-arms-abs-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – Arms and abs / Arms and abs #5"
lesson_5.duration = "21.39"
lesson_5.vimeo_url = "https://vimeo.com/647248294"
lesson_5.save!

## Lesson 6
lesson_6 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #06")
lesson_6.categories << arms_and_abs
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-6.jpg"),
  filename: "workout-arms-abs-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – Arms and abs / Arms and abs #6"
lesson_6.duration = "16.05"
lesson_6.vimeo_url = "https://vimeo.com/649932835"
lesson_6.save!

## Lesson 7
lesson_7 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #07")
lesson_7.categories << arms_and_abs
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-7.jpg"),
  filename: "workout-arms-abs-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – Arms and abs / Arms and abs #7"
lesson_7.duration = "20:28"
lesson_7.vimeo_url = "https://vimeo.com/652451853"
lesson_7.save!

## Lesson 8
lesson_8 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #08")
lesson_8.categories << arms_and_abs
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-8.jpg"),
  filename: "workout-arms-abs-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – Arms and abs / Arms and abs #8"
lesson_8.duration = "18:03"
lesson_8.vimeo_url = "https://vimeo.com/654903297"
lesson_8.save!

## Lesson 9
lesson_9 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #09")
lesson_9.categories << arms_and_abs
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-9.jpg"),
  filename: "workout-arms-abs-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – Arms and abs / Arms and abs #9"
lesson_9.duration = "14:44"
lesson_9.vimeo_url = "https://vimeo.com/663105516"
lesson_9.save!

## Lesson 10
lesson_10 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #10")
lesson_10.categories << arms_and_abs
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-10.jpg"),
  filename: "workout-arms-abs-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – Arms and abs / Arms and abs #10"
lesson_10.duration = "25:26"
lesson_10.vimeo_url = "https://vimeo.com/671119756"
lesson_10.save!

## Lesson 11
lesson_11 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #11")
lesson_11.categories << arms_and_abs
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-11.jpg"),
  filename: "workout-arms-abs-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – Arms and abs / Arms and abs #11"
lesson_11.duration = "26:19"
lesson_11.vimeo_url = "https://vimeo.com/676237755"
lesson_11.save!

## Lesson 12
lesson_12 = arms_and_abs.lessons.find_or_initialize_by(title: "Arms and abs #12")
lesson_12.categories << arms_and_abs
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/arms-and-abs/workout-arms-abs-12.jpg"),
  filename: "workout-arms-abs-12.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – Arms and abs / Arms and abs #12"
lesson_12.duration = "25:56"
lesson_12.vimeo_url = "https://vimeo.com/681817723"
lesson_12.save!
