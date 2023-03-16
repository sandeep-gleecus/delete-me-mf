# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
yoga_instructor = User.find_by(email: "yoga-instructor@motherfit.co.uk")

# Yoga
yoga_program = challenges_and_programs.children.find_or_initialize_by(title: "Yoga program")
yoga_program.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
yoga_program.category_type = :body
yoga_program.description = "Beyond – Yoga"
yoga_program.save!

## Lesson 1
lesson_1 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #01 / Introduction and flexibility")
lesson_1.categories << yoga_program
lesson_1.user = yoga_instructor
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-1.jpg"),
  filename: "yoga-flow-1.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Beyond – Yoga / Yoga #1 / Introduction and flexibility"
lesson_1.duration = "34:24"
lesson_1.vimeo_url = "https://vimeo.com/643440680"
lesson_1.save!

## Lesson 2
lesson_2 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #2 / Full body")
lesson_2.categories << yoga_program
lesson_2.user = yoga_instructor
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-2.jpg"),
  filename: "yoga-flow-2.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Beyond – Yoga – Yoga #2 / Full body"
lesson_2.duration = "31:30"
lesson_2.vimeo_url = "https://vimeo.com/648007958"
lesson_2.save!

## Lesson 3
lesson_3 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #3 / Balance")
lesson_3.categories << yoga_program
lesson_3.user = yoga_instructor
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-3.jpg"),
  filename: "yoga-flow-3.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Beyond – Yoga – Yoga #3 / Balance"
lesson_3.duration = "31:07"
lesson_3.vimeo_url = "https://vimeo.com/683989817"
lesson_3.save!

## Lesson 4
lesson_4 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #4 / Warrior")
lesson_4.categories << yoga_program
lesson_4.user = yoga_instructor
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-4.jpg"),
  filename: "yoga-flow-4.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Beyond – Yoga / Yoga #4 / Warrior"
lesson_4.duration = "33:08"
lesson_4.vimeo_url = "https://vimeo.com/675976858"
lesson_4.save!

## Lesson 5
lesson_5 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #5 / Gentle flow")
lesson_5.categories << yoga_program
lesson_5.user = yoga_instructor
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-5.jpg"),
  filename: "yoga-flow-5.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Yoga / Yoga #5 / Gentle flow"
lesson_5.duration = "31:47"
lesson_5.vimeo_url = "https://vimeo.com/673866741"
lesson_5.save!

## Lesson 6
lesson_6 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #6 / Happy hamstrings")
lesson_6.categories << yoga_program
lesson_6.user = yoga_instructor
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-6.jpg"),
  filename: "yoga-flow-6.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Yoga / Yoga #6 / Happy hamstrings"
lesson_6.duration = "31:30"
lesson_6.vimeo_url = "https://vimeo.com/671289264"
lesson_6.save!

## Lesson 7
lesson_7 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #7 / Neck, shoulders, back tension release")
lesson_7.categories << yoga_program
lesson_7.user = yoga_instructor
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-7.jpg"),
  filename: "yoga-flow-7.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Yoga / Yoga #7 / Neck, shoulders, back tension release"
lesson_7.duration = "33:05"
lesson_7.vimeo_url = "https://vimeo.com/670864023"
lesson_7.save!

## Lesson 8
lesson_8 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #8 / Backbend")
lesson_8.categories << yoga_program
lesson_8.user = yoga_instructor
lesson_8.lesson_type = :body
lesson_8.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-8.jpg"),
  filename: "yoga-flow-8.jpg",
  content_type: "image/jpeg"
)
lesson_8.description = "Yoga / Yoga #8 / Backbend"
lesson_8.duration = "31:02"
lesson_8.vimeo_url = "https://vimeo.com/661926020"
lesson_8.save!

## Lesson 9
lesson_9 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #9 / Twists")
lesson_9.categories << yoga_program
lesson_9.user = yoga_instructor
lesson_9.lesson_type = :body
lesson_9.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-9.jpg"),
  filename: "yoga-flow-9.jpg",
  content_type: "image/jpeg"
)
lesson_9.description = "Yoga / Yoga #9 / Twists"
lesson_9.duration = "31:00"
lesson_9.vimeo_url = "https://vimeo.com/661919396"
lesson_9.save!

## Lesson 10
lesson_10 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #10 / Core")
lesson_10.categories << yoga_program
lesson_10.user = yoga_instructor
lesson_10.lesson_type = :body
lesson_10.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-10.jpg"),
  filename: "yoga-flow-10.jpg",
  content_type: "image/jpeg"
)
lesson_10.description = "Yoga / Yoga #10 / Core"
lesson_10.duration = "30:35"
lesson_10.vimeo_url = "https://vimeo.com/661915588"
lesson_10.save!

## Lesson 11
lesson_11 = yoga_program.lessons.find_or_initialize_by(title: "Yoga #11 / Spicy ladder")
lesson_11.categories << yoga_program
lesson_11.user = yoga_instructor
lesson_11.lesson_type = :body
lesson_11.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/yoga-program/yoga-flow-11.jpg"),
  filename: "yoga-flow-11.jpg",
  content_type: "image/jpeg"
)
lesson_11.description = "Yoga / Yoga #11 / Spicy ladder"
lesson_11.duration = "30:36"
lesson_11.vimeo_url = "https://vimeo.com/665197359"
lesson_11.save!
