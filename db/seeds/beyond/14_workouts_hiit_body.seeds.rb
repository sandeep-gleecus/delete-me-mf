# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Boxing
hiit_body = workouts.children.find_or_initialize_by(title: "HIIT body weight")
hiit_body.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
hiit_body.category_type = :body
hiit_body.description = "Beyond – Workouts / HIIT body weight"
hiit_body.save!

## Lesson Introduction
lesson_introduction = hiit_body.lessons.find_or_initialize_by(title: "Introduction to HIIT body weight")
lesson_introduction.categories << hiit_body
lesson_introduction.user = michelle
lesson_introduction.lesson_type = :body
lesson_introduction.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
# lesson_introduction.description = "Beyond Workout / HIIT body weights introduction"
lesson_introduction.description = "Beyond – Workouts – HIIT body weight / HIIT body weight introduction"
lesson_introduction.duration = "1:00"
lesson_introduction.vimeo_url = "https://vimeo.com/473838793"
lesson_introduction.save!

## Lesson 1
lesson_1 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #01")
lesson_1.categories << hiit_body
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-1.jpg"),
  filename: "workout-hiit-body-1.jpg",
  content_type: "image/jpeg"
)
# lesson_1.description = "Beyond Workout / HIIT body weights #1"
lesson_1.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #1"
lesson_1.duration = "47:17"
lesson_1.vimeo_url = "https://vimeo.com/530291214"
lesson_1.save!

## Lesson 2
lesson_2 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #02")
lesson_2.categories << hiit_body
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-2.jpg"),
  filename: "workout-hiit-body-2.jpg",
  content_type: "image/jpeg"
)
# lesson_2.description = "Beyond Workout / HIIT body weights #2"
lesson_2.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #2"
lesson_2.duration = "43:01"
lesson_2.vimeo_url = "https://vimeo.com/535970018"
lesson_2.save!

## Lesson 3
lesson_3 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #03")
lesson_3.categories << hiit_body
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-3.jpg"),
  filename: "workout-hiit-body-3.jpg",
  content_type: "image/jpeg"
)
# lesson_3.description = "Beyond Workout / HIIT body weights #3"
lesson_3.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #3"
lesson_3.duration = "46:03"
lesson_3.vimeo_url = "https://vimeo.com/538763907"
lesson_3.save!

## Lesson 4
lesson_4 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #04")
lesson_4.categories << hiit_body
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-4.jpg"),
  filename: "workout-hiit-body-4.jpg",
  content_type: "image/jpeg"
)
# lesson_4.description = "Beyond Workout / HIIT body weights #4"
lesson_4.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #4"
lesson_4.duration = "47:17"
lesson_4.vimeo_url = "https://vimeo.com/541700330"
lesson_4.save!

## Lesson 5
lesson_5 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #05")
lesson_5.categories << hiit_body
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-5.jpg"),
  filename: "workout-hiit-body-5.jpg",
  content_type: "image/jpeg"
)
# lesson_5.description = "Beyond Workout / HIIT body weights #5"
lesson_5.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #5"
lesson_5.duration = "53:27"
lesson_5.vimeo_url = "https://vimeo.com/547499517"
lesson_5.save!

## Lesson 6
lesson_6 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #06")
lesson_6.categories << hiit_body
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-6.jpg"),
  filename: "workout-hiit-body-6.jpg",
  content_type: "image/jpeg"
)
# lesson_6.description = "Beyond Workout / HIIT body weights #6"
lesson_6.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #6"
lesson_6.duration = "46:48"
lesson_6.vimeo_url = "https://vimeo.com/551420703"
lesson_6.save!

## Lesson 7
lesson_7 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #07")
lesson_7.categories << hiit_body
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-7.jpg"),
  filename: "workout-hiit-body-7.jpg",
  content_type: "image/jpeg"
)
# lesson_7.description = "Beyond Workout / HIIT body weights #7"
lesson_7.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #7"
lesson_7.duration = "51:44"
lesson_7.vimeo_url = "https://vimeo.com/554242345"
lesson_7.save!

## Lesson 8
lesson_8 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #08")
lesson_8.categories << hiit_body
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-8.jpg"),
  filename: "workout-hiit-body-8.jpg",
  content_type: "image/jpeg"
)
# lesson_8.description = "Beyond Workout / HIIT body weights #8"
lesson_8.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #8"
lesson_8.duration = "53:57"
lesson_8.vimeo_url = "https://vimeo.com/559919152"
lesson_8.save!

## Lesson 9
lesson_9 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #09")
lesson_9.categories << hiit_body
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-9.jpg"),
  filename: "workout-hiit-body-9.jpg",
  content_type: "image/jpeg"
)
# lesson_9.description = "Beyond Workout / HIIT body weights #9"
lesson_9.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #9"
lesson_9.duration = "44:55"
lesson_9.vimeo_url = "https://vimeo.com/562722455"
lesson_9.save!

## Lesson 10
lesson_10 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #10")
lesson_10.categories << hiit_body
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-10.jpg"),
  filename: "workout-hiit-body-10.jpg",
  content_type: "image/jpeg"
)
# lesson_10.description = "Beyond Workout / HIIT body weights #10"
lesson_10.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #10"
lesson_10.duration = "59:40"
lesson_10.vimeo_url = "https://vimeo.com/565560849"
lesson_10.save!

## Lesson 11
lesson_11 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #11")
lesson_11.categories << hiit_body
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-11.jpg"),
  filename: "workout-hiit-body-11.jpg",
  content_type: "image/jpeg"
)
# lesson_11.description = "Beyond Workout / HIIT body weights #11"
lesson_11.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #11"
lesson_11.duration = "41:54"
lesson_11.vimeo_url = "https://vimeo.com/571264882"
lesson_11.save!

## Lesson 12
lesson_12 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #12")
lesson_12.categories << hiit_body
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-12.jpg"),
  filename: "workout-hiit-body-12.jpg",
  content_type: "image/jpeg"
)
# lesson_12.description = "Beyond Workout / HIIT body weights #12"
lesson_12.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #12"
lesson_12.duration = "42:53"
lesson_12.vimeo_url = "https://vimeo.com/573922917"
lesson_12.save!

## Lesson 13
lesson_13 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #13")
lesson_13.categories << hiit_body
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-13.jpg"),
  filename: "workout-hiit-body-13.jpg",
  content_type: "image/jpeg"
)
# lesson_13.description = "Beyond Workout / HIIT body weights #13"
lesson_13.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #13"
lesson_13.duration = "25:10"
lesson_13.vimeo_url = "https://vimeo.com/578778961"
lesson_13.save!

## Lesson 14
lesson_14 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #14")
lesson_14.categories << hiit_body
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-14.jpg"),
  filename: "workout-hiit-body-14.jpg",
  content_type: "image/jpeg"
)
# lesson_14.description = "Beyond Workout / HIIT body weights #14"
lesson_14.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #14"
lesson_14.duration = "25:10"
lesson_14.vimeo_url = "https://vimeo.com/578778961"
lesson_14.save!

## Lesson 15
lesson_15 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #15")
lesson_15.categories << hiit_body
lesson_15.user = michelle
lesson_15.lesson_type = :body
lesson_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-15.jpg"),
  filename: "workout-hiit-body-15.jpg",
  content_type: "image/jpeg"
)
# lesson_15.description = "Beyond Workout / HIIT body weights #15"
lesson_15.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #15"
lesson_15.duration = "31:09"
lesson_15.vimeo_url = "https://vimeo.com/584808909"
lesson_15.save!

## Lesson 16
lesson_16 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #16")
lesson_16.categories << hiit_body
lesson_16.user = michelle
lesson_16.lesson_type = :body
lesson_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-16.jpg"),
  filename: "workout-hiit-body-16.jpg",
  content_type: "image/jpeg"
)
# lesson_16.description = "Beyond Workout / HIIT body weights #16"
lesson_16.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #16"
lesson_16.duration = "24:49"
lesson_16.vimeo_url = "https://vimeo.com/587719115"
lesson_16.save!

## Lesson 17
lesson_17 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #17")
lesson_17.categories << hiit_body
lesson_17.user = michelle
lesson_17.lesson_type = :body
lesson_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-17.jpg"),
  filename: "workout-hiit-body-17.jpg",
  content_type: "image/jpeg"
)
# lesson_17.description = "Beyond Workout / HIIT body weights #17"
lesson_17.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #17"
lesson_17.duration = "27:06"
lesson_17.vimeo_url = "https://vimeo.com/622689809"
lesson_17.save!

## Lesson 18
lesson_18 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #18")
lesson_18.categories << hiit_body
lesson_18.user = michelle
lesson_18.lesson_type = :body
lesson_18.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-18.jpg"),
  filename: "workout-hiit-body-18.jpg",
  content_type: "image/jpeg"
)
# lesson_18.description = "Beyond Workout / HIIT body weights #18"
lesson_18.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #18"
lesson_18.duration = "24:54"
lesson_18.vimeo_url = "https://vimeo.com/632672933"
lesson_18.save!

## Lesson 19
lesson_19 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #19")
lesson_19.categories << hiit_body
lesson_19.user = michelle
lesson_19.lesson_type = :body
lesson_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-19.jpg"),
  filename: "workout-hiit-body-19.jpg",
  content_type: "image/jpeg"
)
# lesson_19.description = "Beyond Workout / HIIT body weights #19"
lesson_19.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #19"
lesson_19.duration = "24:11"
lesson_19.vimeo_url = "https://vimeo.com/640259053"
lesson_19.save!

## Lesson 20
lesson_20 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #20")
lesson_20.categories << hiit_body
lesson_20.user = michelle
lesson_20.lesson_type = :body
lesson_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-20.jpg"),
  filename: "workout-hiit-body-20.jpg",
  content_type: "image/jpeg"
)
# lesson_20.description = "Beyond Workout / HIIT body weights #20"
lesson_20.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #20"
lesson_20.duration = "27:01"
lesson_20.vimeo_url = "https://vimeo.com/642616830"
lesson_20.save!

## Lesson 21
lesson_21 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #21")
lesson_21.categories << hiit_body
lesson_21.user = michelle
lesson_21.lesson_type = :body
lesson_21.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-21.jpg"),
  filename: "workout-hiit-body-21.jpg",
  content_type: "image/jpeg"
)
# lesson_21.description = "Beyond Workout / HIIT body weights #21"
lesson_21.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #21"
lesson_21.duration = "22:41"
lesson_21.vimeo_url = "https://vimeo.com/645116797"
lesson_21.save!

## Lesson 22
lesson_22 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #22")
lesson_22.categories << hiit_body
lesson_22.user = michelle
lesson_22.lesson_type = :body
lesson_22.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-22.jpg"),
  filename: "workout-hiit-body-22.jpg",
  content_type: "image/jpeg"
)
# lesson_22.description = "Beyond Workout / HIIT body weights #22"
lesson_22.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #22"
lesson_22.duration = "22:41"
lesson_22.vimeo_url = "https://vimeo.com/645116797"
lesson_22.save!

## Lesson 23
lesson_23 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #23")
lesson_23.categories << hiit_body
lesson_23.user = michelle
lesson_23.lesson_type = :body
lesson_23.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-23.jpg"),
  filename: "workout-hiit-body-23.jpg",
  content_type: "image/jpeg"
)
# lesson_23.description = "Beyond Workout / HIIT body weights #23"
lesson_23.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #23"
lesson_23.duration = "24:54"
lesson_23.vimeo_url = "https://vimeo.com/649967238"
lesson_23.save!

## Lesson 24
lesson_24 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #24")
lesson_24.categories << hiit_body
lesson_24.user = michelle
lesson_24.lesson_type = :body
lesson_24.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-24.jpg"),
  filename: "workout-hiit-body-24.jpg",
  content_type: "image/jpeg"
)
# lesson_24.description = "Beyond Workout / HIIT body weights #24"
lesson_24.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #24"
lesson_24.duration = "28:53"
lesson_24.vimeo_url = "https://vimeo.com/652807907"
lesson_24.save!

## Lesson 25
lesson_25 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #25")
lesson_25.categories << hiit_body
lesson_25.user = michelle
lesson_25.lesson_type = :body
lesson_25.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-25.jpg"),
  filename: "workout-hiit-body-25.jpg",
  content_type: "image/jpeg"
)
# lesson_25.description = "Beyond Workout / HIIT body weights #25"
lesson_25.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #25"
lesson_25.duration = "22:56"
lesson_25.vimeo_url = "https://vimeo.com/655275074"
lesson_25.save!

## Lesson 26
lesson_26 = hiit_body.lessons.find_or_initialize_by(title: "HIIT body weight #26")
lesson_26.categories << hiit_body
lesson_26.user = michelle
lesson_26.lesson_type = :body
lesson_26.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-body/workout-hiit-body-26.jpg"),
  filename: "workout-hiit-body-26.jpg",
  content_type: "image/jpeg"
)
# lesson_26.description = "Beyond Workout / HIIT body weights #26"
lesson_26.description = "Beyond – Workouts – HIIT body weight / HIIT body weight #26"
lesson_26.duration = "24:18"
lesson_26.vimeo_url = "https://vimeo.com/663372115"
lesson_26.save!
