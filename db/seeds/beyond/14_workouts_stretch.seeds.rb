# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Stretch
stretch = workouts.children.find_or_initialize_by(title: "Stretch")
stretch.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
stretch.category_type = :body
stretch.description = "Beyond – Workouts / Stretch"
stretch.save!

## Lesson 1
lesson_1 = stretch.lessons.find_or_initialize_by(title: "Stretch #01")
lesson_1.categories << stretch
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-1.jpg"),
  filename: "workout-stretch-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – Stretch / Stretch #01"
lesson_1.duration = "12:09"
lesson_1.vimeo_url = "https://vimeo.com/513079203"
lesson_1.save!

## Lesson 2
lesson_2 = stretch.lessons.find_or_initialize_by(title: "Stretch #02")
lesson_2.categories << stretch
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-2.jpg"),
  filename: "workout-stretch-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – Stretch / Stretch #02"
lesson_2.duration = "13:04"
lesson_2.vimeo_url = "https://vimeo.com/630143400"
lesson_2.save!

## Lesson 3
lesson_3 = stretch.lessons.find_or_initialize_by(title: "Stretch #03")
lesson_3.categories << stretch
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-3.jpg"),
  filename: "workout-stretch-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – Stretch / Stretch #03"
lesson_3.duration = "19:16"
lesson_3.vimeo_url = "https://vimeo.com/608203435"
lesson_3.save!

## Lesson 4
lesson_4 = stretch.lessons.find_or_initialize_by(title: "Stretch #04")
lesson_4.categories << stretch
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-4.jpg"),
  filename: "workout-stretch-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – Stretch / Stretch #04"
lesson_4.duration = "18:52"
lesson_4.vimeo_url = "https://vimeo.com/630177776"
lesson_4.save!

## Lesson 5
lesson_5 = stretch.lessons.find_or_initialize_by(title: "Stretch #05")
lesson_5.categories << stretch
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-5.jpg"),
  filename: "workout-stretch-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – Stretch / Stretch #05"
lesson_5.duration = "26:30"
lesson_5.vimeo_url = "https://vimeo.com/630263028"
lesson_5.save!

## Lesson 6
lesson_6 = stretch.lessons.find_or_initialize_by(title: "Stretch #06")
lesson_6.categories << stretch
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-6.jpg"),
  filename: "workout-stretch-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – Stretch / Stretch #06"
lesson_6.duration = "26:41"
lesson_6.vimeo_url = "https://vimeo.com/626265780"
lesson_6.save!

## Lesson 7
lesson_7 = stretch.lessons.find_or_initialize_by(title: "Stretch #07")
lesson_7.categories << stretch
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-7.jpg"),
  filename: "workout-stretch-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – Stretch / Stretch #07"
lesson_7.duration = "23:01"
lesson_7.vimeo_url = "https://vimeo.com/629874403"
lesson_7.save!

## Lesson 8
lesson_8 = stretch.lessons.find_or_initialize_by(title: "Stretch #08")
lesson_8.categories << stretch
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-8.jpg"),
  filename: "workout-stretch-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – Stretch / Stretch #08"
lesson_8.duration = "16:59"
lesson_8.vimeo_url = "https://vimeo.com/639001154"
lesson_8.save!

## Lesson 9
lesson_9 = stretch.lessons.find_or_initialize_by(title: "Stretch #09")
lesson_9.categories << stretch
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-9.jpg"),
  filename: "workout-stretch-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – Stretch / Stretch #09"
lesson_9.duration = "24:07"
lesson_9.vimeo_url = "https://vimeo.com/641452107"
lesson_9.save!

## Lesson 10
lesson_10 = stretch.lessons.find_or_initialize_by(title: "Stretch #10")
lesson_10.categories << stretch
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-10.jpg"),
  filename: "workout-stretch-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – Stretch / Stretch #10"
lesson_10.duration = "19:16"
lesson_10.vimeo_url = "https://vimeo.com/643846133"
lesson_10.save!

## Lesson 11
lesson_11 = stretch.lessons.find_or_initialize_by(title: "Stretch #11")
lesson_11.categories << stretch
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-11.jpg"),
  filename: "workout-stretch-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – Stretch / Stretch #11"
lesson_11.duration = "21:21"
lesson_11.vimeo_url = "https://vimeo.com/646464201"
lesson_11.save!

## Lesson 12
lesson_12 = stretch.lessons.find_or_initialize_by(title: "Stretch #12")
lesson_12.categories << stretch
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-12.jpg"),
  filename: "workout-stretch-12.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – Stretch / Stretch #12"
lesson_12.duration = "24:20"
lesson_12.vimeo_url = "https://vimeo.com/648984288"
lesson_12.save!

## Lesson 13
lesson_13 = stretch.lessons.find_or_initialize_by(title: "Stretch #13")
lesson_13.categories << stretch
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-13.jpg"),
  filename: "workout-stretch-13.jpg",
  content_type: "image/jpeg"
)
lesson_13.description = "Beyond – Workouts – Stretch / Stretch #13"
lesson_13.duration = "22:05"
lesson_13.vimeo_url = "https://vimeo.com/651690467"
lesson_13.save!

## Lesson 14
lesson_14 = stretch.lessons.find_or_initialize_by(title: "Stretch #14")
lesson_14.categories << stretch
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/stretch/workout-stretch-14.jpg"),
  filename: "workout-stretch-14.jpg",
  content_type: "image/jpeg"
)
lesson_14.description = "Beyond – Workouts – Stretch / Stretch #14"
lesson_14.duration = "21:09"
lesson_14.vimeo_url = "https://vimeo.com/654022501"
lesson_14.save!
