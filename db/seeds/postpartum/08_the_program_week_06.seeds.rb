# Relationships
the_program = Category.find_by(title: "Postpartum").descendants.find_by(title: "The Postpartum Program")
michelle = User.find_by(email: "michelle@motherfit.co.uk")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Week 6
week_6 = the_program.children.find_or_initialize_by(title: "Week 6")
week_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
week_6.category_type = :body
week_6.description = "The Postpartum Program – Week 6"
week_6.save!

## Week 6 – Lesson 1
lesson_1 = week_6.lessons.find_or_initialize_by(title: "Day 1 / Part 1 / Workout 1")
lesson_1.categories << week_6
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-1-part-1-workout-1.jpg"),
  filename: "day-1-part-1-workout-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "The Postpartum Program – Week 6 – Day 1 / Part 1 / Workout 1 "
lesson_1.duration = "34:42"
lesson_1.vimeo_url = "https://vimeo.com/637902121"
lesson_1.save!

## Week 6 – Lesson 2
lesson_2 = week_6.lessons.find_or_initialize_by(title: "Day 1 / Part 2 / Postpartum Self Care Checklist")
lesson_2.categories << week_6
lesson_2.user = michelle
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-1-part-2-information.jpg"),
  filename: "day-1-part-2-information.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "The Postpartum Program – Week 6 – Day 1 / Part 2 / Postpartum Self Care Checklist"
lesson_2.href = "The Postpartum Program – Week 6 – Day 1 / Part 2 / Postpartum Self Care Checklist"
# lesson_2.href = "#{Rails.configuration.website_address}#{Rails.application.routes.url_helpers.dashboard_post_path(Post.find_by(title: "Postpartum Self Care Checklist").id)}"
lesson_2.save!

## Week 6 – Lesson 3
lesson_3 = week_6.lessons.find_or_initialize_by(title: "Day 2 / Go for an interval walk")
lesson_3.categories << week_6
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-2-walk.jpg"),
  filename: "day-2-walk.jpg",
  content_type: "image/jpeg"
)
lesson_3.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-2-walk.m4a"),
  filename: "day-2-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_3.description = "The Postpartum Program – Week 6 – Day 2 / Go for an interval walk"
lesson_3.duration = "0:13"
lesson_3.save!

## Week 6 – Lesson 4
lesson_4 = week_6.lessons.find_or_initialize_by(title: "Day 3 / Workout 2")
lesson_4.categories << week_6
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-3-workout-2.jpg"),
  filename: "day-3-workout-2.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "The Postpartum Program – Week 6 – Day 3 / Workout 2"
lesson_4.duration = "36:05"
lesson_4.vimeo_url = "https://vimeo.com/637907694"
lesson_4.save!

## Week 6 – Lesson 5
lesson_5 = week_6.lessons.find_or_initialize_by(title: "Day 4 / Replay Foundations for Pushups, Planks & Burpees")
lesson_5.categories << week_6
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-4-replay-foundations.jpg"),
  filename: "day-4-replay-foundations.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "The Postpartum Program – Week 6 – Day 4 / Replay Foundations for Pushups, Planks & Burpees"
lesson_5.duration = "19:57"
lesson_5.vimeo_url = "https://vimeo.com/632752217"
lesson_5.save!

## Week 6 – Lesson 6
lesson_6 = week_6.lessons.find_or_initialize_by(title: "Day 5 / Part 1 / What is Postnatal Depression?")
lesson_6.categories << week_6
lesson_6.user = michelle
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-5-part-1-information.jpg"),
  filename: "day-5-part-1-information.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "The Postpartum Program – Week 6 – Day 5 / Part 1 / What is Postnatal Depression? "
lesson_6.href = "https://www.nct.org.uk/life-parent/how-you-might-be-feeling/postnatal-depression-questions-you-really-want-ask?gclid=CjwKCAjwy7CKBhBMEiwA0Eb7auTWBlftTsTXwde8KMUDigQ6nG5JCegxzYOnrNK8l9aFEraYEREfnhoCeNMQAvD_BwE"
lesson_6.save!

## Week 6 – Lesson 7
lesson_7 = week_6.lessons.find_or_initialize_by(title: "Day 5 / Part 2 / Yoga (Gentle Full Body Flow)")
lesson_7.categories << week_6
lesson_7.user = yoga_instructor
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-5-part-2-yoga.jpg"),
  filename: "day-5-part-2-yoga.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "The Postpartum Program – Week 6 – Day 5 / Part 2 / Yoga (Gentle Full Body Flow)"
lesson_7.duration = "22:16"
lesson_7.vimeo_url = "https://vimeo.com/671262412"
lesson_7.save!

## Week 6 – Lesson 8
lesson_8 = week_6.lessons.find_or_initialize_by(title: "Day 6 / Workout 3 & Stretch")
lesson_8.categories << week_6
lesson_8.user = michelle
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-6-workout-3-stretch.jpg"),
  filename: "day-6-workout-3-stretch.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "The Postpartum Program – Week 6 – Day 6 / Workout 3 & Stretch"
lesson_8.duration = "36:22"
lesson_8.vimeo_url = "https://vimeo.com/637913274"
lesson_8.save!

## Week 6 – Lesson 9
lesson_9 = week_6.lessons.find_or_initialize_by(title: "Day 7 / Part 1 / Core – Bonus Workout")
lesson_9.categories << week_6
lesson_9.user = michelle
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-7-part-1-core-workout.jpg"),
  filename: "day-7-part-1-core-workout.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "The Postpartum Program – Week 6 – Day 7 / Part 1 / Core – Bonus Workout"
lesson_9.duration = "18:22"
lesson_9.vimeo_url = "https://vimeo.com/675429921"
lesson_9.save!

# ## Week 6 – Lesson 10
lesson_10 = week_6.lessons.find_or_initialize_by(title: "Day 7 / Part 2 / Go for an interval walk")
lesson_10.categories << week_6
lesson_10.user = michelle
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-7-part-2-walk.jpg"),
  filename: "day-7-part-2-walk.jpg",
  content_type: "image/jpeg"
)
lesson_10.audio.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-7-part-2-walk.m4a"),
  filename: "day-7-part-2-walk.m4a",
  content_type: "attachment/m4a"
)
lesson_10.description = "The Postpartum Program – Week 6 – Day 7 / Part 2 / Go for an interval walk"
lesson_10.duration = "0:16"
lesson_10.save!

## Week 6 – Lesson 11
lesson_11 = week_6.lessons.find_or_initialize_by(title: "Day 7 / Part 3 / How’s Dad feeling?")
lesson_11.categories << week_6
lesson_11.user = michelle
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/week-6/day-7-part-3-dad.jpg"),
  filename: "day-7-part-3-dad.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "The Postpartum Program – Week 6 – Day 7 / Part 3 / How’s Dad feeling?"
lesson_11.href = "https://www.nct.org.uk/life-parent/emotions/postnatal-depression-dads-10-things-you-should-know"
lesson_11.save!
