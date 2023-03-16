# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Boxing
hiit_weights = workouts.children.find_or_initialize_by(title: "HIIT with weights")
hiit_weights.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
hiit_weights.category_type = :body
hiit_weights.description = "Beyond – Workouts / HIIT with Weights"
hiit_weights.save!

## Lesson Introduction
lesson_introduction = hiit_weights.lessons.find_or_initialize_by(title: "Introduction to HIIT with weights")
lesson_introduction.categories << hiit_weights
lesson_introduction.user = michelle
lesson_introduction.lesson_type = :body
lesson_introduction.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/weights-introduction.jpg"),
  filename: "weights-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_introduction.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights introduction"
lesson_introduction.duration = "1:01"
lesson_introduction.vimeo_url = "https://vimeo.com/473838799"
lesson_introduction.save!

## Lesson 1
lesson_1 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #01")
lesson_1.categories << hiit_weights
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-1.jpg"),
  filename: "workout-hiit-weights-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #1"
lesson_1.duration = "47:00"
lesson_1.vimeo_url = "https://vimeo.com/530726068"
lesson_1.save!

## Lesson 2
lesson_2 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #02")
lesson_2.categories << hiit_weights
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-2.jpg"),
  filename: "workout-hiit-weights-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #2"
lesson_2.duration = "46:18"
lesson_2.vimeo_url = "https://vimeo.com/536675475"
lesson_2.save!

## Lesson 3
lesson_3 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #03")
lesson_3.categories << hiit_weights
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-3.jpg"),
  filename: "workout-hiit-weights-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #3"
lesson_3.duration = "54:28"
lesson_3.vimeo_url = "https://vimeo.com/542173243"
lesson_3.save!

## Lesson 4
lesson_4 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #04")
lesson_4.categories << hiit_weights
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-4.jpg"),
  filename: "workout-hiit-weights-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #4"
lesson_4.duration = "49:56"
lesson_4.vimeo_url = "https://vimeo.com/544953370"
lesson_4.save!

## Lesson 5
lesson_5 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #05")
lesson_5.categories << hiit_weights
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-5.jpg"),
  filename: "workout-hiit-weights-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #5"
lesson_5.duration = "55:25"
lesson_5.vimeo_url = "https://vimeo.com/547949151"
lesson_5.save!

## Lesson 6
lesson_6 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #06")
lesson_6.categories << hiit_weights
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-6.jpg"),
  filename: "workout-hiit-weights-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #6"
lesson_6.duration = "50:38"
lesson_6.vimeo_url = "https://vimeo.com/551871950"
lesson_6.save!

## Lesson 7
lesson_7 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #07")
lesson_7.categories << hiit_weights
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-7.jpg"),
  filename: "workout-hiit-weights-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #7"
lesson_7.duration = "51:58"
lesson_7.vimeo_url = "https://vimeo.com/554762470"
lesson_7.save!

## Lesson 8
lesson_8 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #08")
lesson_8.categories << hiit_weights
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-8.jpg"),
  filename: "workout-hiit-weights-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #8"
lesson_8.duration = "51:58"
lesson_8.vimeo_url = "https://vimeo.com/554762470"
lesson_8.save!

## Lesson 9
lesson_9 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #09")
lesson_9.categories << hiit_weights
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-9.jpg"),
  filename: "workout-hiit-weights-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #9"
lesson_9.duration = "53:56"
lesson_9.vimeo_url = "https://vimeo.com/560577316"
lesson_9.save!

## Lesson 10
lesson_10 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #10")
lesson_10.categories << hiit_weights
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-10.jpg"),
  filename: "workout-hiit-weights-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #10"
lesson_10.duration = "54:55"
lesson_10.vimeo_url = "https://vimeo.com/563358021"
lesson_10.save!

## Lesson 11
lesson_11 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #11")
lesson_11.categories << hiit_weights
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-11.jpg"),
  filename: "workout-hiit-weights-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #11"
lesson_11.duration = "47:38"
lesson_11.vimeo_url = "https://vimeo.com/566054946"
lesson_11.save!

## Lesson 12
lesson_12 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #12")
lesson_12.categories << hiit_weights
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-12.jpg"),
  filename: "workout-hiit-weights-12.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #12"
lesson_12.duration = "43:00"
lesson_12.vimeo_url = "https://vimeo.com/571745760"
lesson_12.save!

## Lesson 13
lesson_13 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #13")
lesson_13.categories << hiit_weights
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-13.jpg"),
  filename: "workout-hiit-weights-13.jpg",
  content_type: "image/jpeg"
)
lesson_13.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #13"
lesson_13.duration = "44:07"
lesson_13.vimeo_url = "https://vimeo.com/574376642"
lesson_13.save!

## Lesson 14
lesson_14 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #14")
lesson_14.categories << hiit_weights
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-14.jpg"),
  filename: "workout-hiit-weights-14.jpg",
  content_type: "image/jpeg"
)
lesson_14.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #14"
lesson_14.duration = "30:27"
lesson_14.vimeo_url = "https://vimeo.com/579730668"
lesson_14.save!

## Lesson 15
lesson_15 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #15")
lesson_15.categories << hiit_weights
lesson_15.user = michelle
lesson_15.lesson_type = :body
lesson_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-15.jpg"),
  filename: "workout-hiit-weights-15.jpg",
  content_type: "image/jpeg"
)
lesson_15.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #15"
lesson_15.duration = "23:19"
lesson_15.vimeo_url = "https://vimeo.com/581139743"
lesson_15.save!

## Lesson 16
lesson_16 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #16")
lesson_16.categories << hiit_weights
lesson_16.user = michelle
lesson_16.lesson_type = :body
lesson_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-16.jpg"),
  filename: "workout-hiit-weights-16.jpg",
  content_type: "image/jpeg"
)
lesson_16.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #16"
lesson_16.duration = "27:55"
lesson_16.vimeo_url = "https://vimeo.com/585236096"
lesson_16.save!

## Lesson 17
lesson_17 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #17")
lesson_17.categories << hiit_weights
lesson_17.user = michelle
lesson_17.lesson_type = :body
lesson_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-17.jpg"),
  filename: "workout-hiit-weights-17.jpg",
  content_type: "image/jpeg"
)
lesson_17.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #17"
lesson_17.duration = "27:49"
lesson_17.vimeo_url = "https://vimeo.com/588213302"
lesson_17.save!

## Lesson 18
lesson_18 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #18")
lesson_18.categories << hiit_weights
lesson_18.user = michelle
lesson_18.lesson_type = :body
lesson_18.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-18.jpg"),
  filename: "workout-hiit-weights-18.jpg",
  content_type: "image/jpeg"
)
lesson_18.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #18"
lesson_18.duration = "27:02"
lesson_18.vimeo_url = "https://vimeo.com/591443865"
lesson_18.save!

## Lesson 19
lesson_19 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #19")
lesson_19.categories << hiit_weights
lesson_19.user = michelle
lesson_19.lesson_type = :body
lesson_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-19.jpg"),
  filename: "workout-hiit-weights-19.jpg",
  content_type: "image/jpeg"
)
lesson_19.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #19"
lesson_19.duration = "27:10"
lesson_19.vimeo_url = "https://vimeo.com/595119803"
lesson_19.save!

## Lesson 20
lesson_20 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #20")
lesson_20.categories << hiit_weights
lesson_20.user = michelle
lesson_20.lesson_type = :body
lesson_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-20.jpg"),
  filename: "workout-hiit-weights-20.jpg",
  content_type: "image/jpeg"
)
lesson_20.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #20"
lesson_20.duration = "25:54"
lesson_20.vimeo_url = "https://vimeo.com/623172178"
lesson_20.save!

## Lesson 21
lesson_21 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #21")
lesson_21.categories << hiit_weights
lesson_21.user = michelle
lesson_21.lesson_type = :body
lesson_21.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-21.jpg"),
  filename: "workout-hiit-weights-21.jpg",
  content_type: "image/jpeg"
)
lesson_21.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #21"
lesson_21.duration = "37:18"
lesson_21.vimeo_url = "https://vimeo.com/629007594"
lesson_21.save!

## Lesson 22
lesson_22 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #22")
lesson_22.categories << hiit_weights
lesson_22.user = michelle
lesson_22.lesson_type = :body
lesson_22.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-22.jpg"),
  filename: "workout-hiit-weights-22.jpg",
  content_type: "image/jpeg"
)
lesson_22.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #22"
lesson_22.duration = "28:02"
lesson_22.vimeo_url = "https://vimeo.com/638742909"
lesson_22.save!

## Lesson 23
lesson_23 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #23")
lesson_23.categories << hiit_weights
lesson_23.user = michelle
lesson_23.lesson_type = :body
lesson_23.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-23.jpg"),
  filename: "workout-hiit-weights-23.jpg",
  content_type: "image/jpeg"
)
lesson_23.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #23"
lesson_23.duration = "29:37"
lesson_23.vimeo_url = "https://vimeo.com/641276498"
lesson_23.save!

## Lesson 24
lesson_24 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #24")
lesson_24.categories << hiit_weights
lesson_24.user = michelle
lesson_24.lesson_type = :body
lesson_24.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-24.jpg"),
  filename: "workout-hiit-weights-24.jpg",
  content_type: "image/jpeg"
)
lesson_24.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #24"
lesson_24.duration = "32:08"
lesson_24.vimeo_url = "https://vimeo.com/643447535"
lesson_24.save!

## Lesson 25
lesson_25 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #25")
lesson_25.categories << hiit_weights
lesson_25.user = michelle
lesson_25.lesson_type = :body
lesson_25.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-25.jpg"),
  filename: "workout-hiit-weights-25.jpg",
  content_type: "image/jpeg"
)
lesson_25.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #25"
lesson_25.duration = "28:52"
lesson_25.vimeo_url = "https://vimeo.com/646146696"
lesson_25.save!

## Lesson 26
lesson_26 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #26")
lesson_26.categories << hiit_weights
lesson_26.user = michelle
lesson_26.lesson_type = :body
lesson_26.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-26.jpg"),
  filename: "workout-hiit-weights-26.jpg",
  content_type: "image/jpeg"
)
lesson_26.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #26"
lesson_26.duration = "28:25"
lesson_26.vimeo_url = "https://vimeo.com/648540468"
lesson_26.save!

## Lesson 27
lesson_27 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #27")
lesson_27.categories << hiit_weights
lesson_27.user = michelle
lesson_27.lesson_type = :body
lesson_27.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-27.jpg"),
  filename: "workout-hiit-weights-27.jpg",
  content_type: "image/jpeg"
)
lesson_27.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #27"
lesson_27.duration = "25:54"
lesson_27.vimeo_url = "https://vimeo.com/649972627"
lesson_27.save!

## Lesson 28
lesson_28 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #28")
lesson_28.categories << hiit_weights
lesson_28.user = michelle
lesson_28.lesson_type = :body
lesson_28.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-28.jpg"),
  filename: "workout-hiit-weights-28.jpg",
  content_type: "image/jpeg"
)
lesson_28.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #28"
lesson_28.duration = "28:49"
lesson_28.vimeo_url = "https://vimeo.com/653670150"
lesson_28.save!

## Lesson 29
lesson_29 = hiit_weights.lessons.find_or_initialize_by(title: "HIIT with weights #29")
lesson_29.categories << hiit_weights
lesson_29.user = michelle
lesson_29.lesson_type = :body
lesson_29.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/hiit-weights/workout-hiit-weights-29.jpg"),
  filename: "workout-hiit-weights-29.jpg",
  content_type: "image/jpeg"
)
lesson_29.description = "Beyond – Workouts – HIIT with Weights / HIIT the weights #29"
lesson_29.duration = "41:45"
lesson_29.vimeo_url = "https://vimeo.com/672394484"
lesson_29.save!
