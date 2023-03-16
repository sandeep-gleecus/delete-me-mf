# Relationships
workouts = Category.find_by(title: "Beyond").children.find_by(title: "Workouts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

## Boxing
boxing = workouts.children.find_or_initialize_by(title: "Boxing")
boxing.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
boxing.category_type = :body
boxing.description = "Beyond – Workouts / Boxing"
boxing.save!

## Lesson Introduction
lesson_introduction = boxing.lessons.find_or_initialize_by(title: "Introduction to boxing")
lesson_introduction.categories << boxing
lesson_introduction.user = michelle
lesson_introduction.lesson_type = :body
lesson_introduction.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/boxing-introduction.jpg"),
  filename: "boxing-introduction.jpg",
  content_type: "image/jpeg"
)
lesson_introduction.description = "Beyond – Boxings – Boxing Introduction"
lesson_introduction.duration = "0:57"
lesson_introduction.vimeo_url = "https://vimeo.com/473839038"
lesson_introduction.save!

## Lesson 1
lesson_1 = boxing.lessons.find_or_initialize_by(title: "Boxing #1")
lesson_1.categories << boxing
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-1.jpg"),
  filename: "workout-boxing-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Workouts – Boxing / Boxing #1"
lesson_1.duration = "55:14"
lesson_1.vimeo_url = "https://vimeo.com/562147481"
lesson_1.save!

## Lesson 2
lesson_2 = boxing.lessons.find_or_initialize_by(title: "Boxing #2")
lesson_2.categories << boxing
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-2.jpg"),
  filename: "workout-boxing-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Workouts – Boxing / Boxing #2"
lesson_2.duration = "55:14"
lesson_2.vimeo_url = "https://vimeo.com/562147481"
lesson_2.save!

## Lesson 3
lesson_3 = boxing.lessons.find_or_initialize_by(title: "Boxing #3")
lesson_3.categories << boxing
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-3.jpg"),
  filename: "workout-boxing-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Workouts – Boxing / Boxing #3"
lesson_3.duration = "60:12"
lesson_3.vimeo_url = "https://vimeo.com/573350030"
lesson_3.save!

## Lesson 4
lesson_4 = boxing.lessons.find_or_initialize_by(title: "Boxing #4")
lesson_4.categories << boxing
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-4.jpg"),
  filename: "workout-boxing-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Workouts – Boxing / Boxing #4"
lesson_4.duration = "60:42"
lesson_4.vimeo_url = "https://vimeo.com/576148972"
lesson_4.save!

## Lesson 5
lesson_5 = boxing.lessons.find_or_initialize_by(title: "Boxing #5")
lesson_5.categories << boxing
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-5.jpg"),
  filename: "workout-boxing-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Beyond – Workouts – Boxing / Boxing #5"
lesson_5.duration = "61:21"
lesson_5.vimeo_url = "https://vimeo.com/578789495"
lesson_5.save!

## Lesson 6
lesson_6 = boxing.lessons.find_or_initialize_by(title: "Boxing #6")
lesson_6.categories << boxing
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-6.jpg"),
  filename: "workout-boxing-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Beyond – Workouts – Boxing / Boxing #6"
lesson_6.duration = "58:03"
lesson_6.vimeo_url = "https://vimeo.com/581119810"
lesson_6.save!

## Lesson 7
lesson_7 = boxing.lessons.find_or_initialize_by(title: "Boxing #7")
lesson_7.categories << boxing
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-7.jpg"),
  filename: "workout-boxing-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Beyond – Workouts – Boxing / Boxing #7"
lesson_7.duration = "58:37"
lesson_7.vimeo_url = "https://vimeo.com/581216699"
lesson_7.save!

## Lesson 8
lesson_8 = boxing.lessons.find_or_initialize_by(title: "Boxing #8")
lesson_8.categories << boxing
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-8.jpg"),
  filename: "workout-boxing-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Beyond – Workouts – Boxing / Boxing #8"
lesson_8.duration = "57:02"
lesson_8.vimeo_url = "https://vimeo.com/567809015"
lesson_8.save!

## Lesson 9
lesson_9 = boxing.lessons.find_or_initialize_by(title: "Boxing #9")
lesson_9.categories << boxing
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-9.jpg"),
  filename: "workout-boxing-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Beyond – Workouts – Boxing / Boxing #9"
lesson_9.duration = "48:11"
lesson_9.vimeo_url = "https://vimeo.com/587112296"
lesson_9.save!

## Lesson 10
lesson_10 = boxing.lessons.find_or_initialize_by(title: "Boxing #10")
lesson_10.categories << boxing
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-10.jpg"),
  filename: "workout-boxing-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Beyond – Workouts – Boxing / Boxing #10"
lesson_10.duration = "48:11"
lesson_10.vimeo_url = "https://vimeo.com/587112296"
lesson_10.save!

## Lesson 11
lesson_11 = boxing.lessons.find_or_initialize_by(title: "Boxing #11")
lesson_11.categories << boxing
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-11.jpg"),
  filename: "workout-boxing-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Beyond – Workouts – Boxing / Boxing #11"
lesson_11.duration = "55:40"
lesson_11.vimeo_url = "https://vimeo.com/627354085"
lesson_11.save!

## Lesson 12
lesson_12 = boxing.lessons.find_or_initialize_by(title: "Boxing #12")
lesson_12.categories << boxing
lesson_12.user = michelle
lesson_12.lesson_type = :body
lesson_12.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-12.jpg"),
  filename: "workout-boxing-12.jpg",
  content_type: "image/jpeg"
)
lesson_12.description = "Beyond – Workouts – Boxing / Boxing #12"
lesson_12.duration = "32:38"
lesson_12.vimeo_url = "https://vimeo.com/630775641"
lesson_12.save!

## Lesson 13
lesson_13 = boxing.lessons.find_or_initialize_by(title: "Boxing #13")
lesson_13.categories << boxing
lesson_13.user = michelle
lesson_13.lesson_type = :body
lesson_13.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-13.jpg"),
  filename: "workout-boxing-13.jpg",
  content_type: "image/jpeg"
)
lesson_13.description = "Beyond – Workouts – Boxing / Boxing #13"
lesson_13.duration = "35:50"
lesson_13.vimeo_url = "https://vimeo.com/639426252"
lesson_13.save!

## Lesson 14
lesson_14 = boxing.lessons.find_or_initialize_by(title: "Boxing #14")
lesson_14.categories << boxing
lesson_14.user = michelle
lesson_14.lesson_type = :body
lesson_14.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-14.jpg"),
  filename: "workout-boxing-14.jpg",
  content_type: "image/jpeg"
)
lesson_14.description = "Beyond – Workouts – Boxing / Boxing #14"
lesson_14.duration = "30:32"
lesson_14.vimeo_url = "https://vimeo.com/641822598"
lesson_14.save!

## Lesson 15
lesson_15 = boxing.lessons.find_or_initialize_by(title: "Boxing #15")
lesson_15.categories << boxing
lesson_15.user = michelle
lesson_15.lesson_type = :body
lesson_15.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-15.jpg"),
  filename: "workout-boxing-15.jpg",
  content_type: "image/jpeg"
)
lesson_15.description = "Beyond – Workouts – Boxing / Boxing #15"
lesson_15.duration = "34:34"
lesson_15.vimeo_url = "https://vimeo.com/644271398"
lesson_15.save!

## Lesson 16
lesson_16 = boxing.lessons.find_or_initialize_by(title: "Boxing #16")
lesson_16.categories << boxing
lesson_16.user = michelle
lesson_16.lesson_type = :body
lesson_16.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-16.jpg"),
  filename: "workout-boxing-16.jpg",
  content_type: "image/jpeg"
)
lesson_16.description = "Beyond – Workouts – Boxing / Boxing #16"
lesson_16.duration = "29:44"
lesson_16.vimeo_url = "https://vimeo.com/646780847"
lesson_16.save!

## Lesson 17
lesson_17 = boxing.lessons.find_or_initialize_by(title: "Boxing #17")
lesson_17.categories << boxing
lesson_17.user = michelle
lesson_17.lesson_type = :body
lesson_17.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-17.jpg"),
  filename: "workout-boxing-17.jpg",
  content_type: "image/jpeg"
)
lesson_17.description = "Beyond – Workouts – Boxing / Boxing #17"
lesson_17.duration = "61:15"
lesson_17.vimeo_url = "https://vimeo.com/509174274"
lesson_17.save!

## Lesson 18
lesson_18 = boxing.lessons.find_or_initialize_by(title: "Boxing #18")
lesson_18.categories << boxing
lesson_18.user = michelle
lesson_18.lesson_type = :body
lesson_18.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-18.jpg"),
  filename: "workout-boxing-18.jpg",
  content_type: "image/jpeg"
)
lesson_18.description = "Beyond – Workouts – Boxing / Boxing #18"
lesson_18.duration = "58:04"
lesson_18.vimeo_url = "https://vimeo.com/511921213"
lesson_18.save!

## Lesson 19
lesson_19 = boxing.lessons.find_or_initialize_by(title: "Boxing #19")
lesson_19.categories << boxing
lesson_19.user = michelle
lesson_19.lesson_type = :body
lesson_19.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-19.jpg"),
  filename: "workout-boxing-19.jpg",
  content_type: "image/jpeg"
)
lesson_19.description = "Beyond – Workouts – Boxing / Boxing #19"
lesson_19.duration = "59:21"
lesson_19.vimeo_url = "https://vimeo.com/514623107"
lesson_19.save!

## Lesson 20
lesson_20 = boxing.lessons.find_or_initialize_by(title: "Boxing #20")
lesson_20.categories << boxing
lesson_20.user = michelle
lesson_20.lesson_type = :body
lesson_20.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-20.jpg"),
  filename: "workout-boxing-20.jpg",
  content_type: "image/jpeg"
)
lesson_20.description = "Beyond – Workouts – Boxing / Boxing #20"
lesson_20.duration = "61:17"
lesson_20.vimeo_url = "https://vimeo.com/517505508"
lesson_20.save!

## Lesson 21
lesson_21 = boxing.lessons.find_or_initialize_by(title: "Boxing #21")
lesson_21.categories << boxing
lesson_21.user = michelle
lesson_21.lesson_type = :body
lesson_21.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-21.jpg"),
  filename: "workout-boxing-21.jpg",
  content_type: "image/jpeg"
)
lesson_21.description = "Beyond – Workouts – Boxing / Boxing #21"
lesson_21.duration = "56:32"
lesson_21.vimeo_url = "https://vimeo.com/520291325"
lesson_21.save!

## Lesson 22
lesson_22 = boxing.lessons.find_or_initialize_by(title: "Boxing #22")
lesson_22.categories << boxing
lesson_22.user = michelle
lesson_22.lesson_type = :body
lesson_22.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-22.jpg"),
  filename: "workout-boxing-22.jpg",
  content_type: "image/jpeg"
)
lesson_22.description = "Beyond – Workouts – Boxing / Boxing #22"
lesson_22.duration = "56:22"
lesson_22.vimeo_url = "https://vimeo.com/523146426"
lesson_22.save!

## Lesson 23
lesson_23 = boxing.lessons.find_or_initialize_by(title: "Boxing #23")
lesson_23.categories << boxing
lesson_23.user = michelle
lesson_23.lesson_type = :body
lesson_23.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-23.jpg"),
  filename: "workout-boxing-23.jpg",
  content_type: "image/jpeg"
)
lesson_23.description = "Beyond – Workouts – Boxing / Boxing #23"
lesson_23.duration = "61:34"
lesson_23.vimeo_url = "https://vimeo.com/526540619"
lesson_23.save!

## Lesson 24
lesson_24 = boxing.lessons.find_or_initialize_by(title: "Boxing #24")
lesson_24.categories << boxing
lesson_24.user = michelle
lesson_24.lesson_type = :body
lesson_24.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-24.jpg"),
  filename: "workout-boxing-24.jpg",
  content_type: "image/jpeg"
)
lesson_24.description = "Beyond – Workouts – Boxing / Boxing #24"
lesson_24.duration = "61:34"
lesson_24.vimeo_url = "https://vimeo.com/526540619"
lesson_24.save!

## Lesson 25
lesson_25 = boxing.lessons.find_or_initialize_by(title: "Boxing #25")
lesson_25.categories << boxing
lesson_25.user = michelle
lesson_25.lesson_type = :body
lesson_25.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-25.jpg"),
  filename: "workout-boxing-25.jpg",
  content_type: "image/jpeg"
)
lesson_25.description = "Beyond – Workouts – Boxing / Boxing #25"
lesson_25.duration = "54:53"
lesson_25.vimeo_url = "https://vimeo.com/538041043"
lesson_25.save!

## Lesson 26
lesson_26 = boxing.lessons.find_or_initialize_by(title: "Boxing #26")
lesson_26.categories << boxing
lesson_26.user = michelle
lesson_26.lesson_type = :body
lesson_26.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-26.jpg"),
  filename: "workout-boxing-26.jpg",
  content_type: "image/jpeg"
)
lesson_26.description = "Beyond – Workouts – Boxing / Boxing #26"
lesson_26.duration = "49:15"
lesson_26.vimeo_url = "https://vimeo.com/540999993"
lesson_26.save!

## Lesson 27
lesson_27 = boxing.lessons.find_or_initialize_by(title: "Boxing #27")
lesson_27.categories << boxing
lesson_27.user = michelle
lesson_27.lesson_type = :body
lesson_27.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-27.jpg"),
  filename: "workout-boxing-27.jpg",
  content_type: "image/jpeg"
)
lesson_27.description = "Beyond – Workouts – Boxing / Boxing #27"
lesson_27.duration = "56:22"
lesson_27.vimeo_url = "https://vimeo.com/543952060"
lesson_27.save!

## Lesson 28
lesson_28 = boxing.lessons.find_or_initialize_by(title: "Boxing #28")
lesson_28.categories << boxing
lesson_28.user = michelle
lesson_28.lesson_type = :body
lesson_28.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-28.jpg"),
  filename: "workout-boxing-28.jpg",
  content_type: "image/jpeg"
)
lesson_28.description = "Beyond – Workouts – Boxing / Boxing #28"
lesson_28.duration = "54:13"
lesson_28.vimeo_url = "https://vimeo.com/546833469"
lesson_28.save!

## Lesson 29
lesson_29 = boxing.lessons.find_or_initialize_by(title: "Boxing #29")
lesson_29.categories << boxing
lesson_29.user = michelle
lesson_29.lesson_type = :body
lesson_29.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-29.jpg"),
  filename: "workout-boxing-29.jpg",
  content_type: "image/jpeg"
)
lesson_29.description = "Beyond – Workouts – Boxing / Boxing #29"
lesson_29.duration = "45:18"
lesson_29.vimeo_url = "https://vimeo.com/549592071"
lesson_29.save!

## Lesson 30
lesson_30 = boxing.lessons.find_or_initialize_by(title: "Boxing #30")
lesson_30.categories << boxing
lesson_30.user = michelle
lesson_30.lesson_type = :body
lesson_30.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-30.jpg"),
  filename: "workout-boxing-30.jpg",
  content_type: "image/jpeg"
)
lesson_30.description = "Beyond – Workouts – Boxing / Boxing #30"
lesson_30.duration = "54:58"
lesson_30.vimeo_url = "https://vimeo.com/553658081"
lesson_30.save!

## Lesson 31
lesson_31 = boxing.lessons.find_or_initialize_by(title: "Boxing #31")
lesson_31.categories << boxing
lesson_31.user = michelle
lesson_31.lesson_type = :body
lesson_31.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-31.jpg"),
  filename: "workout-boxing-31.jpg",
  content_type: "image/jpeg"
)
lesson_31.description = "Beyond – Workouts – Boxing / Boxing #31"
lesson_31.duration = "62:12"
lesson_31.vimeo_url = "https://vimeo.com/556550060"
lesson_31.save!

## Lesson 32
lesson_32 = boxing.lessons.find_or_initialize_by(title: "Boxing #32")
lesson_32.categories << boxing
lesson_32.user = michelle
lesson_32.lesson_type = :body
lesson_32.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-32.jpg"),
  filename: "workout-boxing-32.jpg",
  content_type: "image/jpeg"
)
lesson_32.description = "Beyond – Workouts – Boxing / Boxing #32"
lesson_32.duration = "55:42"
lesson_32.vimeo_url = "https://vimeo.com/559348017"
lesson_32.save!

## Lesson 33
lesson_33 = boxing.lessons.find_or_initialize_by(title: "Boxing #33")
lesson_33.categories << boxing
lesson_33.user = michelle
lesson_33.lesson_type = :body
lesson_33.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-33.jpg"),
  filename: "workout-boxing-33.jpg",
  content_type: "image/jpeg"
)
lesson_33.description = "Beyond – Workouts – Boxing / Boxing #33"
lesson_33.duration = "29:34"
lesson_33.vimeo_url = "https://vimeo.com/649404355"
lesson_33.save!

## Lesson 34
lesson_34 = boxing.lessons.find_or_initialize_by(title: "Boxing #34")
lesson_34.categories << boxing
lesson_34.user = michelle
lesson_34.lesson_type = :body
lesson_34.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-34.jpg"),
  filename: "workout-boxing-34.jpg",
  content_type: "image/jpeg"
)
lesson_34.description = "Beyond – Workouts – Boxing / Boxing #34"
lesson_34.duration = "31:54"
lesson_34.vimeo_url = "https://vimeo.com/651918886"
lesson_34.save!

## Lesson 35
lesson_35 = boxing.lessons.find_or_initialize_by(title: "Boxing #35")
lesson_35.categories << boxing
lesson_35.user = michelle
lesson_35.lesson_type = :body
lesson_35.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-35.jpg"),
  filename: "workout-boxing-35.jpg",
  content_type: "image/jpeg"
)
lesson_35.description = "Beyond – Workouts – Boxing / Boxing #35"
lesson_35.duration = "32:39"
lesson_35.vimeo_url = "https://vimeo.com/654473370"
lesson_35.save!

## Lesson 36
lesson_36 = boxing.lessons.find_or_initialize_by(title: "Boxing #36")
lesson_36.categories << boxing
lesson_36.user = michelle
lesson_36.lesson_type = :body
lesson_36.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-36.jpg"),
  filename: "workout-boxing-36.jpg",
  content_type: "image/jpeg"
)
lesson_36.description = "Beyond – Workouts – Boxing / Boxing #36"
lesson_36.duration = "32:39"
lesson_36.vimeo_url = "https://vimeo.com/654473370"
lesson_36.save!

## Lesson 37
lesson_37 = boxing.lessons.find_or_initialize_by(title: "Boxing #37")
lesson_37.categories << boxing
lesson_37.user = michelle
lesson_37.lesson_type = :body
lesson_37.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts/boxing/workout-boxing-37.jpg"),
  filename: "workout-boxing-37.jpg",
  content_type: "image/jpeg"
)
lesson_37.description = "Beyond – Workouts – Boxing / Boxing #37"
lesson_37.duration = "47:50"
lesson_37.vimeo_url = "https://vimeo.com/671907009"
lesson_37.save!
