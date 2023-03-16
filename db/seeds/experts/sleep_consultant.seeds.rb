# Relationships
experts = Category.find_by(title: "Experts")
user_sleep_consultant = User.find_by(email: "sleep-consultant@motherfit.co.uk")

# Sleep Consultant
sleep_consultant = experts.children.find_or_initialize_by(title: "Sleep Consultant")
sleep_consultant.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
sleep_consultant.resource.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
sleep_consultant.category_type = :mind
sleep_consultant.description = "Sleep Consultant"
sleep_consultant.save!

## Lesson 1
lesson_1 = sleep_consultant.lessons.find_or_initialize_by(title: "Who is the night ninja?")
lesson_1.categories << sleep_consultant
lesson_1.user = user_sleep_consultant
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/who-is-the-night-ninja.jpg"),
  filename: "who-is-the-night-ninja.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Sleep Consultant – Who is the night ninja?"
lesson_1.duration = "0:46"
lesson_1.vimeo_url = "https://vimeo.com/517479488"
lesson_1.save!

## Lesson 2
lesson_2 = sleep_consultant.lessons.find_or_initialize_by(title: "1st few days")
lesson_2.categories << sleep_consultant
lesson_2.user = user_sleep_consultant
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/1st-few-days.jpg"),
  filename: "1st-few-days.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Sleep Consultant – 1st few days"
lesson_2.duration = "2:55"
lesson_2.vimeo_url = "https://vimeo.com/517237114"
lesson_2.save!

## Lesson 3
lesson_3 = sleep_consultant.lessons.find_or_initialize_by(title: "3–6 months")
lesson_3.categories << sleep_consultant
lesson_3.user = user_sleep_consultant
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/3-6-months.jpg"),
  filename: "3-6-months.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Sleep Consultant – 3–6 months"
lesson_3.duration = "2:58"
lesson_3.vimeo_url = "https://vimeo.com/517166478"
lesson_3.save!

## Lesson 4
lesson_4 = sleep_consultant.lessons.find_or_initialize_by(title: "6-18 months")
lesson_4.categories << sleep_consultant
lesson_4.user = user_sleep_consultant
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/6-18-months.jpg"),
  filename: "6-18-months.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Sleep Consultant – 6-18 months"
lesson_4.duration = "3:34"
lesson_4.vimeo_url = "https://vimeo.com/517237269"
lesson_4.save!

## Lesson 5
lesson_5 = sleep_consultant.lessons.find_or_initialize_by(title: "18 months–3.5 years")
lesson_5.categories << sleep_consultant
lesson_5.user = user_sleep_consultant
lesson_5.lesson_type = :mind
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/18-months-3-5-years.jpg"),
  filename: "18-months-3-5-years.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Sleep Consultant – 18 months–3.5 years"
lesson_5.duration = "2:43"
lesson_5.vimeo_url = "https://vimeo.com/517241760"
lesson_5.save!

## Lesson 6
lesson_6 = sleep_consultant.lessons.find_or_initialize_by(title: "3.5–5 years")
lesson_6.categories << sleep_consultant
lesson_6.user = user_sleep_consultant
lesson_6.lesson_type = :mind
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/3.5yrs-5yrs.jpg"),
  filename: "3.5yrs-5yrs.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Sleep Consultant – 3.5–5 years"
lesson_6.duration = "1:55"
lesson_6.vimeo_url = "https://vimeo.com/517246058"
lesson_6.save!

## Lesson 7
lesson_7 = sleep_consultant.lessons.find_or_initialize_by(title: "Troubleshooting")
lesson_7.categories << sleep_consultant
lesson_7.user = user_sleep_consultant
lesson_7.lesson_type = :mind
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/sleep-consultant/troubleshooting.jpg"),
  filename: "troubleshooting.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Sleep Consultant – 3.5–5 years"
lesson_7.duration = "1:34"
lesson_7.vimeo_url = "https://vimeo.com/517251680"
lesson_7.save!
