# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Upper body
upper_body = workouts.children.find_or_initialize_by(title: "Upper body")
upper_body.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
upper_body.category_type = :body
upper_body.description = "Beyond – Workouts / Upper body"
upper_body.save!

## Lesson Introduction
lesson_introduction = upper_body.lessons.find_or_initialize_by(title: "Introduction to upper body burn")
lesson_introduction.categories << upper_body
lesson_introduction.user = michelle
lesson_introduction.lesson_type = :body
lesson_introduction.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/upper-body-introduction.jpg"),
  filename: "upper-body-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_introduction.description = "Beyond – Workouts – Stretch / Upper body introduction"
lesson_introduction.duration = "1:07"
lesson_introduction.vimeo_url = "https://vimeo.com/473838553"
lesson_introduction.save!

## Lesson 1
lesson_1 = upper_body.lessons.find_or_initialize_by(title: "Upper body #01")
lesson_1.categories << upper_body
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-1.jpg"),
  filename: "workout-upper-body-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – Stretch / Upper body #1"
lesson_1.duration = "51:14"
lesson_1.vimeo_url = "https://vimeo.com/531731214"
lesson_1.save!

## Lesson 2
lesson_2 = upper_body.lessons.find_or_initialize_by(title: "Upper body #02")
lesson_2.categories << upper_body
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-2.jpg"),
  filename: "workout-upper-body-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – Stretch / Upper body #2"
lesson_2.duration = "51:19"
lesson_2.vimeo_url = "https://vimeo.com/537216430"
lesson_2.save!

## Lesson 3
lesson_3 = upper_body.lessons.find_or_initialize_by(title: "Upper body #03")
lesson_3.categories << upper_body
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-3.jpg"),
  filename: "workout-upper-body-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – Stretch / Upper body #3"
lesson_3.duration = "51:40"
lesson_3.vimeo_url = "https://vimeo.com/540094211"
lesson_3.save!

## Lesson 4
lesson_4 = upper_body.lessons.find_or_initialize_by(title: "Upper body #04")
lesson_4.categories << upper_body
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-4.jpg"),
  filename: "workout-upper-body-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – Stretch / Upper body #4"
lesson_4.duration = "54:33"
lesson_4.vimeo_url = "https://vimeo.com/543233387"
lesson_4.save!

## Lesson 5
lesson_5 = upper_body.lessons.find_or_initialize_by(title: "Upper body #05")
lesson_5.categories << upper_body
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-5.jpg"),
  filename: "workout-upper-body-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – Stretch / Upper body #5"
lesson_5.duration = "47:09"
lesson_5.vimeo_url = "https://vimeo.com/546035453"
lesson_5.save!

## Lesson 6
lesson_6 = upper_body.lessons.find_or_initialize_by(title: "Upper body #06")
lesson_6.categories << upper_body
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-6.jpg"),
  filename: "workout-upper-body-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – Stretch / Upper body #6"
lesson_6.duration = "50:03"
lesson_6.vimeo_url = "https://vimeo.com/548812866"
lesson_6.save!

## Lesson 7
lesson_7 = upper_body.lessons.find_or_initialize_by(title: "Upper body #07")
lesson_7.categories << upper_body
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-7.jpg"),
  filename: "workout-upper-body-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – Stretch / Upper body #7"
lesson_7.duration = "56:37"
lesson_7.vimeo_url = "https://vimeo.com/552901716"
lesson_7.save!

## Lesson 8
lesson_8 = upper_body.lessons.find_or_initialize_by(title: "Upper body #08")
lesson_8.categories << upper_body
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-8.jpg"),
  filename: "workout-upper-body-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – Stretch / Upper body #8"
lesson_8.duration = "54:22"
lesson_8.vimeo_url = "https://vimeo.com/555852549"
lesson_8.save!

## Lesson 9
lesson_9 = upper_body.lessons.find_or_initialize_by(title: "Upper body #09")
lesson_9.categories << upper_body
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-9.jpg"),
  filename: "workout-upper-body-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – Stretch / Upper body #9"
lesson_9.duration = "46:10"
lesson_9.vimeo_url = "https://vimeo.com/558699542"
lesson_9.save!

## Lesson 10
lesson_10 = upper_body.lessons.find_or_initialize_by(title: "Upper body #10")
lesson_10.categories << upper_body
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-10.jpg"),
  filename: "workout-upper-body-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – Stretch / Upper body #10"
lesson_10.duration = "50:43"
lesson_10.vimeo_url = "https://vimeo.com/561503329"
lesson_10.save!

## Lesson 11
lesson_11 = upper_body.lessons.find_or_initialize_by(title: "Upper body #11")
lesson_11.categories << upper_body
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-11.jpg"),
  filename: "workout-upper-body-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – Stretch / Upper body #11"
lesson_11.duration = "54:45"
lesson_11.vimeo_url = "https://vimeo.com/564101476"
lesson_11.save!

## Lesson 12
lesson_12 = upper_body.lessons.find_or_initialize_by(title: "Upper body #12")
lesson_12.categories << upper_body
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-12.jpg"),
  filename: "workout-upper-body-12.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – Stretch / Upper body #12"
lesson_12.duration = "55:21"
lesson_12.vimeo_url = "https://vimeo.com/566990489"
lesson_12.save!

## Lesson 13
lesson_13 = upper_body.lessons.find_or_initialize_by(title: "Upper body #13")
lesson_13.categories << upper_body
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-13.jpg"),
  filename: "workout-upper-body-13.jpg",
  content_type: "image/jpeg"
)
lesson_13.description = "Beyond – Workouts – Stretch / Upper body #13"
lesson_13.duration = "51:54"
lesson_13.vimeo_url = "https://vimeo.com/572507621"
lesson_13.save!

## Lesson 14
lesson_14 = upper_body.lessons.find_or_initialize_by(title: "Upper body #14")
lesson_14.categories << upper_body
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-14.jpg"),
  filename: "workout-upper-body-14.jpg",
  content_type: "image/jpeg"
)
lesson_14.description = "Beyond – Workouts – Stretch / Upper body #14"
lesson_14.duration = "50:31"
lesson_14.vimeo_url = "https://vimeo.com/575322492"
lesson_14.save!

## Lesson 15
lesson_15 = upper_body.lessons.find_or_initialize_by(title: "Upper body #15")
lesson_15.categories << upper_body
lesson_15.user = michelle
lesson_15.lesson_type = :body
lesson_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-15.jpg"),
  filename: "workout-upper-body-15.jpg",
  content_type: "image/jpeg"
)
lesson_15.description = "Beyond – Workouts – Stretch / Upper body #15"
lesson_15.duration = "28:25"
lesson_15.vimeo_url = "https://vimeo.com/580626466"
lesson_15.save!

## Lesson 16
lesson_16 = upper_body.lessons.find_or_initialize_by(title: "Upper body #16")
lesson_16.categories << upper_body
lesson_16.user = michelle
lesson_16.lesson_type = :body
lesson_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-16.jpg"),
  filename: "workout-upper-body-16.jpg",
  content_type: "image/jpeg"
)
lesson_16.description = "Beyond – Workouts – Stretch / Upper body #16"
lesson_16.duration = "22:06"
lesson_16.vimeo_url = "https://vimeo.com/581167625"
lesson_16.save!

## Lesson 17
lesson_17 = upper_body.lessons.find_or_initialize_by(title: "Upper body #17")
lesson_17.categories << upper_body
lesson_17.user = michelle
lesson_17.lesson_type = :body
lesson_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-17.jpg"),
  filename: "workout-upper-body-17.jpg",
  content_type: "image/jpeg"
)
lesson_17.description = "Beyond – Workouts – Stretch / Upper body #17"
lesson_17.duration = "27:03"
lesson_17.vimeo_url = "https://vimeo.com/586233271"
lesson_17.save!

## Lesson 18
lesson_18 = upper_body.lessons.find_or_initialize_by(title: "Upper body #18")
lesson_18.categories << upper_body
lesson_18.user = michelle
lesson_18.lesson_type = :body
lesson_18.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-18.jpg"),
  filename: "workout-upper-body-18.jpg",
  content_type: "image/jpeg"
)
lesson_18.description = "Beyond – Workouts – Stretch / Upper body #18"
lesson_18.duration = "30:23"
lesson_18.vimeo_url = "https://vimeo.com/592600430"
lesson_18.save!

## Lesson 19
lesson_19 = upper_body.lessons.find_or_initialize_by(title: "Upper body #19")
lesson_19.categories << upper_body
lesson_19.user = michelle
lesson_19.lesson_type = :body
lesson_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-19.jpg"),
  filename: "workout-upper-body-19.jpg",
  content_type: "image/jpeg"
)
lesson_19.description = "Beyond – Workouts – Stretch / Upper body #19"
lesson_19.duration = "26:44"
lesson_19.vimeo_url = "https://vimeo.com/596391374"
lesson_19.save!

## Lesson 20
lesson_20 = upper_body.lessons.find_or_initialize_by(title: "Upper body #20")
lesson_20.categories << upper_body
lesson_20.user = michelle
lesson_20.lesson_type = :body
lesson_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-20.jpg"),
  filename: "workout-upper-body-20.jpg",
  content_type: "image/jpeg"
)
lesson_20.description = "Beyond – Workouts – Stretch / Upper body #20"
lesson_20.duration = "36:52"
lesson_20.vimeo_url = "https://vimeo.com/625410717"
lesson_20.save!

## Lesson 21
lesson_21 = upper_body.lessons.find_or_initialize_by(title: "Upper body #21")
lesson_21.categories << upper_body
lesson_21.user = michelle
lesson_21.lesson_type = :body
lesson_21.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-21.jpg"),
  filename: "workout-upper-body-21.jpg",
  content_type: "image/jpeg"
)
lesson_21.description = "Beyond – Workouts – Stretch / Upper body #21"
lesson_21.duration = "34:26"
lesson_21.vimeo_url = "https://vimeo.com/631740299"
lesson_21.save!

## Lesson 22
lesson_22 = upper_body.lessons.find_or_initialize_by(title: "Upper body #22")
lesson_22.categories << upper_body
lesson_22.user = michelle
lesson_22.lesson_type = :body
lesson_22.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-22.jpg"),
  filename: "workout-upper-body-22.jpg",
  content_type: "image/jpeg"
)
lesson_22.description = "Beyond – Workouts – Stretch / Upper body #22"
lesson_22.duration = "32:00"
lesson_22.vimeo_url = "https://vimeo.com/639863312"
lesson_22.save!

## Lesson 23
lesson_23 = upper_body.lessons.find_or_initialize_by(title: "Upper body #23")
lesson_23.categories << upper_body
lesson_23.user = michelle
lesson_23.lesson_type = :body
lesson_23.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-23.jpg"),
  filename: "workout-upper-body-23.jpg",
  content_type: "image/jpeg"
)
lesson_23.description = "Beyond – Workouts – Stretch / Upper body #23"
lesson_23.duration = "32:52"
lesson_23.vimeo_url = "https://vimeo.com/642229957"
lesson_23.save!

## Lesson 24
lesson_24 = upper_body.lessons.find_or_initialize_by(title: "Upper body #24")
lesson_24.categories << upper_body
lesson_24.user = michelle
lesson_24.lesson_type = :body
lesson_24.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-24.jpg"),
  filename: "workout-upper-body-24.jpg",
  content_type: "image/jpeg"
)
lesson_24.description = "Beyond – Workouts – Stretch / Upper body #24"
lesson_24.duration = "31:44"
lesson_24.vimeo_url = "https://vimeo.com/644726824"
lesson_24.save!

## Lesson 25
lesson_25 = upper_body.lessons.find_or_initialize_by(title: "Upper body #25")
lesson_25.categories << upper_body
lesson_25.user = michelle
lesson_25.lesson_type = :body
lesson_25.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-25.jpg"),
  filename: "workout-upper-body-25.jpg",
  content_type: "image/jpeg"
)
lesson_25.description = "Beyond – Workouts – Stretch / Upper body #25"
lesson_25.duration = "30:46"
lesson_25.vimeo_url = "https://vimeo.com/647224725"
lesson_25.save!

## Lesson 26
lesson_26 = upper_body.lessons.find_or_initialize_by(title: "Upper body #26")
lesson_26.categories << upper_body
lesson_26.user = michelle
lesson_26.lesson_type = :body
lesson_26.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-26.jpg"),
  filename: "workout-upper-body-26.jpg",
  content_type: "image/jpeg"
)
lesson_26.description = "Beyond – Workouts – Stretch / Upper body #26"
lesson_26.duration = "33:51"
lesson_26.vimeo_url = "https://vimeo.com/649927333"
lesson_26.save!

## Lesson 27
lesson_27 = upper_body.lessons.find_or_initialize_by(title: "Upper body #27")
lesson_27.categories << upper_body
lesson_27.user = michelle
lesson_27.lesson_type = :body
lesson_27.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-27.jpg"),
  filename: "workout-upper-body-27.jpg",
  content_type: "image/jpeg"
)
lesson_27.description = "Beyond – Workouts – Stretch / Upper body #27"
lesson_27.duration = "31:11"
lesson_27.vimeo_url = "https://vimeo.com/652449244"
lesson_27.save!

## Lesson 28
lesson_28 = upper_body.lessons.find_or_initialize_by(title: "Upper body #28")
lesson_28.categories << upper_body
lesson_28.user = michelle
lesson_28.lesson_type = :body
lesson_28.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-28.jpg"),
  filename: "workout-upper-body-28.jpg",
  content_type: "image/jpeg"
)
lesson_28.description = "Beyond – Workouts – Stretch / Upper body #28"
lesson_28.duration = "32:46"
lesson_28.vimeo_url = "https://vimeo.com/654899170"
lesson_28.save!

## Lesson 29
lesson_29 = upper_body.lessons.find_or_initialize_by(title: "Upper body #29")
lesson_29.categories << upper_body
lesson_29.user = michelle
lesson_29.lesson_type = :body
lesson_29.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-29.jpg"),
  filename: "workout-upper-body-29.jpg",
  content_type: "image/jpeg"
)
lesson_29.description = "Beyond – Workouts – Stretch / Upper body #29"
lesson_29.duration = "22:47"
lesson_29.vimeo_url = "https://vimeo.com/663102726"
lesson_29.save!

## Lesson 30
lesson_30 = upper_body.lessons.find_or_initialize_by(title: "Upper body #30")
lesson_30.categories << upper_body
lesson_30.user = michelle
lesson_30.lesson_type = :body
lesson_30.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-30.jpg"),
  filename: "workout-upper-body-30.jpg",
  content_type: "image/jpeg"
)
lesson_30.description = "Beyond – Workouts – Stretch / Upper body #30"
lesson_30.duration = "36:15"
lesson_30.vimeo_url = "https://vimeo.com/670003757"
lesson_30.save!

## Lesson 31
lesson_31 = upper_body.lessons.find_or_initialize_by(title: "Upper body #31")
lesson_31.categories << upper_body
lesson_31.user = michelle
lesson_31.lesson_type = :body
lesson_31.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/upper-body/workout-upper-body-31.jpg"),
  filename: "workout-upper-body-31.jpg",
  content_type: "image/jpeg"
)
lesson_31.description = "Beyond – Workouts – Stretch / Upper body #31"
lesson_31.duration = "29:41"
lesson_31.vimeo_url = "https://vimeo.com/680588388"
lesson_31.save!
