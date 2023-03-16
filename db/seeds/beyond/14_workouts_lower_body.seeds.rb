# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Lower Body
lower_body = workouts.children.find_or_initialize_by(title: "Lower body strength")
lower_body.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
lower_body.category_type = :body
lower_body.description = "Beyond – Workouts / Lower body strength"
lower_body.save!

## Lesson 1
lesson_introduction = lower_body.lessons.find_or_initialize_by(title: "Introduction to lower body strength")
lesson_introduction.categories << lower_body
lesson_introduction.user = michelle
lesson_introduction.lesson_type = :body
lesson_introduction.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/lower-body-introduction.jpg"),
  filename: "lower-body-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_introduction.description = "Beyond – Workouts – Lower body strength / Lower body strength introduction"
lesson_introduction.duration = "1:12"
lesson_introduction.vimeo_url = "https://vimeo.com/473838625"
lesson_introduction.save!

lesson_1 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #01")
lesson_1.categories << lower_body
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-1.jpg"),
  filename: "workout-lower-body-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – Lower body strength / Lower body strength #1"
lesson_1.duration = "56:56"
lesson_1.vimeo_url = "https://vimeo.com/531317794"
lesson_1.save!

lesson_2 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #02")
lesson_2.categories << lower_body
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-2.jpg"),
  filename: "workout-lower-body-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – Lower body strength / Lower body strength #2"
lesson_2.duration = "49:05"
lesson_2.vimeo_url = "https://vimeo.com/536896125"
lesson_2.save!

lesson_3 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #03")
lesson_3.categories << lower_body
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-3.jpg"),
  filename: "workout-lower-body-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – Lower body strength / Lower body strength #3"
lesson_3.duration = "58:12"
lesson_3.vimeo_url = "https://vimeo.com/539732317"
lesson_3.save!

lesson_4 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #04")
lesson_4.categories << lower_body
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-4.jpg"),
  filename: "workout-lower-body-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – Lower body strength / Lower body strength #4"
lesson_4.duration = "51:28"
lesson_4.vimeo_url = "https://vimeo.com/542740384"
lesson_4.save!

lesson_5 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #05")
lesson_5.categories << lower_body
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-5.jpg"),
  filename: "workout-lower-body-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – Lower body strength / Lower body strength #5"
lesson_5.duration = "46:58"
lesson_5.vimeo_url = "https://vimeo.com/545517394"
lesson_5.save!

lesson_6 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #06")
lesson_6.categories << lower_body
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-6.jpg"),
  filename: "workout-lower-body-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – Lower body strength / Lower body strength #6"
lesson_6.duration = "52:11"
lesson_6.vimeo_url = "https://vimeo.com/548436634"
lesson_6.save!

lesson_7 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #07")
lesson_7.categories << lower_body
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-7.jpg"),
  filename: "workout-lower-body-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – Lower body strength / Lower body strength #7"
lesson_7.duration = "61:15"
lesson_7.vimeo_url = "https://vimeo.com/552375665"
lesson_7.save!

lesson_8 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #08")
lesson_8.categories << lower_body
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-8.jpg"),
  filename: "workout-lower-body-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – Lower body strength / Lower body strength #8"
lesson_8.duration = "57:04"
lesson_8.vimeo_url = "https://vimeo.com/555157033"
lesson_8.save!

lesson_9 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #09")
lesson_9.categories << lower_body
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-9.jpg"),
  filename: "workout-lower-body-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – Lower body strength / Lower body strength #9"
lesson_9.duration = "43:42"
lesson_9.vimeo_url = "https://vimeo.com/558021212"
lesson_9.save!

lesson_10 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #10")
lesson_10.categories << lower_body
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-10.jpg"),
  filename: "workout-lower-body-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – Lower body strength / Lower body strength #10"
lesson_10.duration = "43:42"
lesson_10.vimeo_url = "https://vimeo.com/558021212"
lesson_10.save!

lesson_11 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #11")
lesson_11.categories << lower_body
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-11.jpg"),
  filename: "workout-lower-body-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – Lower body strength / Lower body strength #11"
lesson_11.duration = "53:20"
lesson_11.vimeo_url = "https://vimeo.com/563637069"
lesson_11.save!

lesson_12 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #12")
lesson_12.categories << lower_body
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-12.jpg"),
  filename: "workout-lower-body-12.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – Lower body strength / Lower body strength #12"
lesson_12.duration = "53:10"
lesson_12.vimeo_url = "https://vimeo.com/566534272"
lesson_12.save!

lesson_13 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #13")
lesson_13.categories << lower_body
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-13.jpg"),
  filename: "workout-lower-body-13.jpg",
  content_type: "image/jpeg"
)
lesson_13.description = "Beyond – Workouts – Lower body strength / Lower body strength #13"
lesson_13.duration = "52:11"
lesson_13.vimeo_url = "https://vimeo.com/572098075"
lesson_13.save!

lesson_14 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #14")
lesson_14.categories << lower_body
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-14.jpg"),
  filename: "workout-lower-body-14.jpg",
  content_type: "image/jpeg"
)
lesson_14.description = "Beyond – Workouts – Lower body strength / Lower body strength #14"
lesson_14.duration = "52:10"
lesson_14.vimeo_url = "https://vimeo.com/574846385"
lesson_14.save!

lesson_15 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #15")
lesson_15.categories << lower_body
lesson_15.user = michelle
lesson_15.lesson_type = :body
lesson_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-15.jpg"),
  filename: "workout-lower-body-15.jpg",
  content_type: "image/jpeg"
)
lesson_15.description = "Beyond – Workouts – Lower body strength / Lower body strength #15"
lesson_15.duration = "31:55"
lesson_15.vimeo_url = "https://vimeo.com/580181082"
lesson_15.save!

lesson_16 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #16")
lesson_16.categories << lower_body
lesson_16.user = michelle
lesson_16.lesson_type = :body
lesson_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-16.jpg"),
  filename: "workout-lower-body-16.jpg",
  content_type: "image/jpeg"
)
lesson_16.description = "Beyond – Workouts – Lower body strength / Lower body strength #16"
lesson_16.duration = "22:16"
lesson_16.vimeo_url = "https://vimeo.com/581152820"
lesson_16.save!

lesson_17 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #17")
lesson_17.categories << lower_body
lesson_17.user = michelle
lesson_17.lesson_type = :body
lesson_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-17.jpg"),
  filename: "workout-lower-body-17.jpg",
  content_type: "image/jpeg"
)
lesson_17.description = "Beyond – Workouts – Lower body strength / Lower body strength #17"
lesson_17.duration = "29:37"
lesson_17.vimeo_url = "https://vimeo.com/585690521"
lesson_17.save!

lesson_18 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #18")
lesson_18.categories << lower_body
lesson_18.user = michelle
lesson_18.lesson_type = :body
lesson_18.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-18.jpg"),
  filename: "workout-lower-body-18.jpg",
  content_type: "image/jpeg"
)
lesson_18.description = "Beyond – Workouts – Lower body strength / Lower body strength #18"
lesson_18.duration = "27:50"
lesson_18.vimeo_url = "https://vimeo.com/588723410"
lesson_18.save!

lesson_19 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #19")
lesson_19.categories << lower_body
lesson_19.user = michelle
lesson_19.lesson_type = :body
lesson_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-19.jpg"),
  filename: "workout-lower-body-19.jpg",
  content_type: "image/jpeg"
)
lesson_19.description = "Beyond – Workouts – Lower body strength / Lower body strength #19"
lesson_19.duration = "27:40"
lesson_19.vimeo_url = "https://vimeo.com/592023233"
lesson_19.save!

lesson_20 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #20")
lesson_20.categories << lower_body
lesson_20.user = michelle
lesson_20.lesson_type = :body
lesson_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-20.jpg"),
  filename: "workout-lower-body-20.jpg",
  content_type: "image/jpeg"
)
lesson_20.description = "Beyond – Workouts – Lower body strength / Lower body strength #20"
lesson_20.duration = "33:49"
lesson_20.vimeo_url = "https://vimeo.com/595757693"
lesson_20.save!

lesson_21 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #21")
lesson_21.categories << lower_body
lesson_21.user = michelle
lesson_21.lesson_type = :body
lesson_21.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-21.jpg"),
  filename: "workout-lower-body-21.jpg",
  content_type: "image/jpeg"
)
lesson_21.description = "Beyond – Workouts – Lower body strength / Lower body strength #21"
lesson_21.duration = "28:39"
lesson_21.vimeo_url = "https://vimeo.com/624254315"
lesson_21.save!

lesson_22 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #22")
lesson_22.categories << lower_body
lesson_22.user = michelle
lesson_22.lesson_type = :body
lesson_22.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-22.jpg"),
  filename: "workout-lower-body-22.jpg",
  content_type: "image/jpeg"
)
lesson_22.description = "Beyond – Workouts – Lower body strength / Lower body strength #22"
lesson_22.duration = "34:34"
lesson_22.vimeo_url = "https://vimeo.com/629838926"
lesson_22.save!

lesson_23 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #23")
lesson_23.categories << lower_body
lesson_23.user = michelle
lesson_23.lesson_type = :body
lesson_23.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-23.jpg"),
  filename: "workout-lower-body-23.jpg",
  content_type: "image/jpeg"
)
lesson_23.description = "Beyond – Workouts – Lower body strength / Lower body strength #23"
lesson_23.duration = "35:11"
lesson_23.vimeo_url = "https://vimeo.com/638970629"
lesson_23.save!

lesson_24 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #24")
lesson_24.categories << lower_body
lesson_24.user = michelle
lesson_24.lesson_type = :body
lesson_24.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-24.jpg"),
  filename: "workout-lower-body-24.jpg",
  content_type: "image/jpeg"
)
lesson_24.description = "Beyond – Workouts – Lower body strength / Lower body strength #24"
lesson_24.duration = "34:56"
lesson_24.vimeo_url = "https://vimeo.com/641419658"
lesson_24.save!

lesson_25 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #25")
lesson_25.categories << lower_body
lesson_25.user = michelle
lesson_25.lesson_type = :body
lesson_25.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-25.jpg"),
  filename: "workout-lower-body-25.jpg",
  content_type: "image/jpeg"
)
lesson_25.description = "Beyond – Workouts – Lower body strength / Lower body strength #25"
lesson_25.duration = "34:12"
lesson_25.vimeo_url = "https://vimeo.com/643834855"
lesson_25.save!

lesson_26 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #26")
lesson_26.categories << lower_body
lesson_26.user = michelle
lesson_26.lesson_type = :body
lesson_26.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-26.jpg"),
  filename: "workout-lower-body-26.jpg",
  content_type: "image/jpeg"
)
lesson_26.description = "Beyond – Workouts – Lower body strength / Lower body strength #26"
lesson_26.duration = "35:14"
lesson_26.vimeo_url = "https://vimeo.com/646351527"
lesson_26.save!

lesson_27 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #27")
lesson_27.categories << lower_body
lesson_27.user = michelle
lesson_27.lesson_type = :body
lesson_27.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-27.jpg"),
  filename: "workout-lower-body-27.jpg",
  content_type: "image/jpeg"
)
lesson_27.description = "Beyond – Workouts – Lower body strength / Lower body strength #27"
lesson_27.duration = "30:02"
lesson_27.vimeo_url = "https://vimeo.com/648981214"
lesson_27.save!

lesson_28 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #28")
lesson_28.categories << lower_body
lesson_28.user = michelle
lesson_28.lesson_type = :body
lesson_28.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-28.jpg"),
  filename: "workout-lower-body-28.jpg",
  content_type: "image/jpeg"
)
lesson_28.description = "Beyond – Workouts – Lower body strength / Lower body strength #28"
lesson_28.duration = "28:20"
lesson_28.vimeo_url = "https://vimeo.com/651452064"
lesson_28.save!

lesson_29 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #29")
lesson_29.categories << lower_body
lesson_29.user = michelle
lesson_29.lesson_type = :body
lesson_29.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-29.jpg"),
  filename: "workout-lower-body-29.jpg",
  content_type: "image/jpeg"
)
lesson_29.description = "Beyond – Workouts – Lower body strength / Lower body strength #29"
lesson_29.duration = "33:09"
lesson_29.vimeo_url = "https://vimeo.com/654017541"
lesson_29.save!

lesson_30 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #30")
lesson_30.categories << lower_body
lesson_30.user = michelle
lesson_30.lesson_type = :body
lesson_30.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-30.jpg"),
  filename: "workout-lower-body-30.jpg",
  content_type: "image/jpeg"
)
lesson_30.description = "Beyond – Workouts – Lower body strength / Lower body strength #30"
lesson_30.duration = "43:11"
lesson_30.vimeo_url = "https://vimeo.com/669690689"
lesson_30.save!

lesson_31 = lower_body.lessons.find_or_initialize_by(title: "Lower body strength #31")
lesson_31.categories << lower_body
lesson_31.user = michelle
lesson_31.lesson_type = :body
lesson_31.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/lower-body/workout-lower-body-31.jpg"),
  filename: "workout-lower-body-31.jpg",
  content_type: "image/jpeg"
)
lesson_31.description = "Beyond – Workouts – Lower body strength / Lower body strength #31"
lesson_31.duration = "45:03"
lesson_31.vimeo_url = "https://vimeo.com/674583152"
lesson_31.save!
