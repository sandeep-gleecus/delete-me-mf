# Relationships
rebuild = Category.find_by(title: "Postpartum").children.find_by(title: "Rebuild")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Postpartum Bridge
postpartum_bridge = rebuild.children.find_or_initialize_by(title: "Postpartum Bridge")
postpartum_bridge.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
postpartum_bridge.category_type = :body
postpartum_bridge.description = "Postpartum Bridge"
postpartum_bridge.save!

## Postpartum Bridge – Lesson 1
lesson_1 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Core #01")
lesson_1.categories << postpartum_bridge
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/core-1.jpg"),
  filename: "core-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Postpartum Bridge – Core #01"
lesson_1.duration = "18:22"
lesson_1.vimeo_url = "https://vimeo.com/681840857"
lesson_1.save!

## Postpartum Bridge – Lesson 2
lesson_2 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Core #02")
lesson_2.categories << postpartum_bridge
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/core-2.jpg"),
  filename: "core-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Postpartum Bridge – Core #02"
lesson_2.duration = "18:23"
lesson_2.vimeo_url = "https://vimeo.com/681843126"
lesson_2.save!

## Postpartum Bridge – Lesson 3
lesson_3 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #01")
lesson_3.categories << postpartum_bridge
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-1.jpg"),
  filename: "workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Postpartum Bridge – Workout #01"
lesson_3.duration = "31:52"
lesson_3.vimeo_url = "https://vimeo.com/681845154"
lesson_3.save!

## Postpartum Bridge – Lesson 4
lesson_4 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #02")
lesson_4.categories << postpartum_bridge
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-2.jpg"),
  filename: "workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Postpartum Bridge – Workout #02"
lesson_4.duration = "31:56"
lesson_4.vimeo_url = "https://vimeo.com/681848801"
lesson_4.save!

## Postpartum Bridge – Lesson 5
lesson_5 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #03")
lesson_5.categories << postpartum_bridge
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-3.jpg"),
    filename: "workout-3.jpg",
    content_type: "image/jpeg"
  )
lesson_5.description = "Postpartum Bridge – Workout #03"
lesson_5.duration = "32:15"
lesson_5.vimeo_url = "https://vimeo.com/681854446"
lesson_5.save!

## Postpartum Bridge – Lesson 6
lesson_6 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #04")
lesson_6.categories << postpartum_bridge
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-4.jpg"),
    filename: "workout-4.jpg",
    content_type: "image/jpeg"
  )
lesson_6.description = "Postpartum Bridge – Workout #04"
lesson_6.duration = "23:55"
lesson_6.vimeo_url = "https://vimeo.com/681868014"
lesson_6.save!

## Postpartum Bridge – Lesson 7
lesson_7 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #05")
lesson_7.categories << postpartum_bridge
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-5.jpg"),
    filename: "workout-5.jpg",
    content_type: "image/jpeg"
  )
lesson_7.description = "Postpartum Bridge – Workout #05"
lesson_7.duration = "36:37"
lesson_7.vimeo_url = "https://vimeo.com/681873001"
lesson_7.save!

## Postpartum Bridge – Lesson 8
lesson_8 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #06")
lesson_8.categories << postpartum_bridge
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-6.jpg"),
    filename: "workout-6.jpg",
    content_type: "image/jpeg"
  )
lesson_8.description = "Postpartum Bridge – Workout #06"
lesson_8.duration = "29:24"
lesson_8.vimeo_url = "https://vimeo.com/681877526"
lesson_8.save!

## Postpartum Bridge – Lesson 9
lesson_9 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #07")
lesson_9.categories << postpartum_bridge
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-7.jpg"),
    filename: "workout-7.jpg",
    content_type: "image/jpeg"
  )
lesson_9.description = "Postpartum Bridge – Workout #07"
lesson_9.duration = "35:30"
lesson_9.vimeo_url = "https://vimeo.com/681881715"
lesson_9.save!

## Postpartum Bridge – Lesson 10
lesson_10 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #08")
lesson_10.categories << postpartum_bridge
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-8.jpg"),
    filename: "workout-8.jpg",
    content_type: "image/jpeg"
  )
lesson_10.description = "Postpartum Bridge – Workout #08"
lesson_10.duration = "28:46"
lesson_10.vimeo_url = "https://vimeo.com/681887549"
lesson_10.save!

## Postpartum Bridge – Lesson 11
lesson_11 = postpartum_bridge.lessons.find_or_initialize_by(title: "Postpartum Bridge – Workout #09")
lesson_11.categories << postpartum_bridge
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
    io: File.open("app/assets/images/seeds/postpartum/postpartum-bridge/workout-9.jpg"),
    filename: "workout-9.jpg",
    content_type: "image/jpeg"
  )
lesson_11.description = "Postpartum Bridge – Workout #09"
lesson_11.duration = "42:14"
lesson_11.vimeo_url = "https://vimeo.com/681857072"
lesson_11.save!
