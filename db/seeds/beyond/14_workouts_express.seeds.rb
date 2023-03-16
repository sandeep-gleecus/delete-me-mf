# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

## Express
express = workouts.children.find_or_initialize_by(title: "Express")
express.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
express.category_type = :body
express.description = "Beyond – Workouts / Express"
express.save!

## Lesson Introduction
lesson_introduction = express.lessons.find_or_initialize_by(title: "Introduction to express")
lesson_introduction.categories << express
lesson_introduction.user = michelle
lesson_introduction.lesson_type = :body
lesson_introduction.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/express-introduction.jpg"),
  filename: "express-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_introduction.description = "Beyond – Workouts – Express / Express introduction"
lesson_introduction.duration = "1:06"
lesson_introduction.vimeo_url = "https://vimeo.com/473838895"
lesson_introduction.save!

## Lesson 1
lesson_1 = express.lessons.find_or_initialize_by(title: "Express #19")
lesson_1.categories << express
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-19.jpg"),
  filename: "workout-express-19.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – Express / Express #1"
lesson_1.duration = "22:23"
lesson_1.vimeo_url = "https://vimeo.com/537597417"
lesson_1.save!

## Lesson 2
lesson_2 = express.lessons.find_or_initialize_by(title: "Express #20")
lesson_2.categories << express
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-20.jpg"),
  filename: "workout-express-20.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – Express / Express #2"
lesson_2.duration = "23:59"
lesson_2.vimeo_url = "https://vimeo.com/540528738"
lesson_2.save!

## Lesson 3
lesson_3 = express.lessons.find_or_initialize_by(title: "Express #21")
lesson_3.categories << express
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-21.jpg"),
  filename: "workout-express-21.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – Express / Express #3"
lesson_3.duration = "24:22"
lesson_3.vimeo_url = "https://vimeo.com/546357908"
lesson_3.save!

## Lesson 4
lesson_4 = express.lessons.find_or_initialize_by(title: "Express #22")
lesson_4.categories << express
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-22.jpg"),
  filename: "workout-express-22.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – Express / Express #4"
lesson_4.duration = "25:56"
lesson_4.vimeo_url = "https://vimeo.com/549174656"
lesson_4.save!

## Lesson 5
lesson_5 = express.lessons.find_or_initialize_by(title: "Express #23")
lesson_5.categories << express
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-23.jpg"),
  filename: "workout-express-23.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – Express / Express #5"
lesson_5.duration = "23:42"
lesson_5.vimeo_url = "https://vimeo.com/553224305"
lesson_5.save!

## Lesson 6
lesson_6 = express.lessons.find_or_initialize_by(title: "Express #24")
lesson_6.categories << express
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-24.jpg"),
  filename: "workout-express-24.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – Express / Express #6"
lesson_6.duration = "26:34"
lesson_6.vimeo_url = "https://vimeo.com/556088023"
lesson_6.save!

## Lesson 7
lesson_7 = express.lessons.find_or_initialize_by(title: "Express #25")
lesson_7.categories << express
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-25.jpg"),
  filename: "workout-express-25.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – Express / Express #7"
lesson_7.duration = "26:50"
lesson_7.vimeo_url = "https://vimeo.com/558907562"
lesson_7.save!

## Lesson 8
lesson_8 = express.lessons.find_or_initialize_by(title: "Express #26")
lesson_8.categories << express
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-26.jpg"),
  filename: "workout-express-26.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – Express / Express #8"
lesson_8.duration = "24:40"
lesson_8.vimeo_url = "https://vimeo.com/561690464"
lesson_8.save!

## Lesson 9
lesson_9 = express.lessons.find_or_initialize_by(title: "Express #27")
lesson_9.categories << express
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-27.jpg"),
  filename: "workout-express-27.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – Express / Express #9"
lesson_9.duration = "23:53"
lesson_9.vimeo_url = "https://vimeo.com/564511587"
lesson_9.save!

## Lesson 10
lesson_10 = express.lessons.find_or_initialize_by(title: "Express #28")
lesson_10.categories << express
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-28.jpg"),
  filename: "workout-express-28.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – Express / Express #10"
lesson_10.duration = "25:57"
lesson_10.vimeo_url = "https://vimeo.com/567375693"
lesson_10.save!

## Lesson 11
lesson_11 = express.lessons.find_or_initialize_by(title: "Express #29")
lesson_11.categories << express
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-29.jpg"),
  filename: "workout-express-29.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – Express / Express #11"
lesson_11.duration = "26:24"
lesson_11.vimeo_url = "https://vimeo.com/572916240"
lesson_11.save!

## Lesson 12
lesson_12 = express.lessons.find_or_initialize_by(title: "Express #30")
lesson_12.categories << express
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-30.jpg"),
  filename: "workout-express-30.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – Express / Express #12"
lesson_12.duration = "27:26"
lesson_12.vimeo_url = "https://vimeo.com/575713329"
lesson_12.save!

## Lesson 13
lesson_13 = express.lessons.find_or_initialize_by(title: "Express #31")
lesson_13.categories << express
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-31.jpg"),
  filename: "workout-express-31.jpg",
  content_type: "image/jpeg"
)
lesson_13.description = "Beyond – Workouts – Express / Express #13"
lesson_13.duration = "28:48"
lesson_13.vimeo_url = "https://vimeo.com/581074500"
lesson_13.save!

## Lesson 14
lesson_14 = express.lessons.find_or_initialize_by(title: "Express #32")
lesson_14.categories << express
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-32.jpg"),
  filename: "workout-express-32.jpg",
  content_type: "image/jpeg"
)
lesson_14.description = "Beyond – Workouts – Express / Express #14"
lesson_14.duration = "27:41"
lesson_14.vimeo_url = "https://vimeo.com/586654554"
lesson_14.save!

## Lesson 15
lesson_15 = express.lessons.find_or_initialize_by(title: "Express #33")
lesson_15.categories << express
lesson_15.user = michelle
lesson_15.lesson_type = :body
lesson_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-33.jpg"),
  filename: "workout-express-33.jpg",
  content_type: "image/jpeg"
)
lesson_15.description = "Beyond – Workouts – Express / Express #15"
lesson_15.duration = "25:28"
lesson_15.vimeo_url = "https://vimeo.com/593181202"
lesson_15.save!

## Lesson 16
lesson_16 = express.lessons.find_or_initialize_by(title: "Express #34")
lesson_16.categories << express
lesson_16.user = michelle
lesson_16.lesson_type = :body
lesson_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-34.jpg"),
  filename: "workout-express-34.jpg",
  content_type: "image/jpeg"
)
lesson_16.description = "Beyond – Workouts – Express / Express #16"
lesson_16.duration = "23:05"
lesson_16.vimeo_url = "https://vimeo.com/597063010"
lesson_16.save!

## Lesson 17
lesson_17 = express.lessons.find_or_initialize_by(title: "Express #35")
lesson_17.categories << express
lesson_17.user = michelle
lesson_17.lesson_type = :body
lesson_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-35.jpg"),
  filename: "workout-express-35.jpg",
  content_type: "image/jpeg"
)
lesson_17.description = "Beyond – Workouts – Express / Express #17"
lesson_17.duration = "24:51"
lesson_17.vimeo_url = "https://vimeo.com/681068946"
lesson_17.save!

## Lesson 18
lesson_18 = express.lessons.find_or_initialize_by(title: "Express #36")
lesson_18.categories << express
lesson_18.user = michelle
lesson_18.lesson_type = :body
lesson_18.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-36.jpg"),
  filename: "workout-express-36.jpg",
  content_type: "image/jpeg"
)
lesson_18.description = "Beyond – Workouts – Express / Express #18"
lesson_18.duration = "25:47"
lesson_18.vimeo_url = "https://vimeo.com/670398438"
lesson_18.save!

## Lesson 19
lesson_19 = express.lessons.find_or_initialize_by(title: "Express #37")
lesson_19.categories << express
lesson_19.user = michelle
lesson_19.lesson_type = :body
lesson_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-37.jpg"),
  filename: "workout-express-37.jpg",
  content_type: "image/jpeg"
)
lesson_19.description = "Beyond – Workouts – Express / Express #19"
lesson_19.duration = "17:36"
lesson_19.vimeo_url = "https://vimeo.com/680994257"
lesson_19.save!

## Lesson 20
lesson_20 = express.lessons.find_or_initialize_by(title: "Express #38")
lesson_20.categories << express
lesson_20.user = michelle
lesson_20.lesson_type = :body
lesson_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/express/workout-express-38.jpg"),
  filename: "workout-express-38.jpg",
  content_type: "image/jpeg"
)
lesson_20.description = "Beyond – Workouts – Express / Express #20"
lesson_20.duration = "24:40"
lesson_20.vimeo_url = "https://vimeo.com/581189857"
lesson_20.save!
