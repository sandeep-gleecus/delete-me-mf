# Relationships
challenge_8_week_strength = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "8 week strength")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Week 2
week_2 = challenge_8_week_strength.children.find_or_initialize_by(title: "Week 2")
week_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-2/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_2.category_type = :body
week_2.description = "Beyond – 8 week strength – Week 2"
week_2.save!

## Week 2 – Lesson 1
lesson_1 = week_2.lessons.find_or_initialize_by(title: "Week 2 – Workout 1 / Bum, quads and hams")
lesson_1.categories << week_2
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-2/workout-1-bum-quads-hamstrings.jpg"),
  filename: "workout-1-bum-quads-hamstrings.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – 8 week strength – Week 2 / Workout 1 – Bum, quads and hams"
lesson_1.duration = "50:54"
lesson_1.vimeo_url = "https://vimeo.com/685365154"
lesson_1.save!

## Week 2 – Lesson 2
lesson_2 = week_2.lessons.find_or_initialize_by(title: "Week 2 – Workout 2 / Back and biceps")
lesson_2.categories << week_2
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-2/workout-2-back-biceps.jpg"),
  filename: "workout-2-back-biceps.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – 8 week strength – Week 2 / Workout 2 – Back and biceps"
lesson_2.duration = "48:46"
lesson_2.vimeo_url = "https://vimeo.com/686183407"
lesson_2.save!

## Week 2 – Lesson 3
lesson_3 = week_2.lessons.find_or_initialize_by(title: "Week 2 – Workout 3 / Chest, delts and triceps")
lesson_3.categories << week_2
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/week-2/workout-3-chest-delts-triceps.jpg"),
  filename: "workout-3-chest-delts-triceps.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – 8 week strength – Week 2 / Workout 3 – Chest, delts and triceps"
lesson_3.duration = "52:54"
lesson_3.vimeo_url = "https://vimeo.com/687023927"
lesson_3.save!
