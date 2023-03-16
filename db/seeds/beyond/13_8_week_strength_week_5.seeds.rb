# Relationships
challenge_8_week_strength = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "8 week strength")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 5
week_5 = challenge_8_week_strength.children.find_or_initialize_by(title: "Week 5")
week_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-5/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_5.category_type = :body
week_5.description = "Beyond – 8 week strength – Week 5"
week_5.save!

## Week 5 – Lesson 1
lesson_1 = week_5.lessons.find_or_initialize_by(title: "Week 5 – Workout 1 / Bum, quads and hams")
lesson_1.categories << week_5
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-5/workout-1-bum-quads-hamstrings.jpg"),
  filename: "workout-1-bum-quads-hamstrings.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 8 week strength – Week 5 / Workout 1 – Bum, quads and hams"
lesson_1.duration = "00:00"
lesson_1.vimeo_url = "https://vimeo.com/687697820"
lesson_1.save!

## Week 5 – Lesson 2
lesson_2 = week_5.lessons.find_or_initialize_by(title: "Week 5 – Workout 2 / Back and biceps")
lesson_2.categories << week_5
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-5/workout-2-back-biceps.jpg"),
  filename: "workout-2-back-biceps.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 8 week strength – Week 5 / Workout 2 – Back and biceps"
lesson_2.duration = "00:00"
lesson_2.vimeo_url = "https://vimeo.com/687697839"
lesson_2.save!

## Week 5 – Lesson 3
lesson_3 = week_5.lessons.find_or_initialize_by(title: "Week 5 – Workout 3 / Chest, delts and triceps")
lesson_3.categories << week_5
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-5/workout-3-chest-delts-triceps.jpg"),
  filename: "workout-3-chest-delts-triceps.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 8 week strength – Week 5 / Workout 3 – Chest, delts and triceps"
lesson_3.duration = "00:00"
lesson_3.vimeo_url = "https://vimeo.com/687697839"
lesson_3.save!
