# Relationships
intermediate = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge").children.find_by(title: "Intermediate")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Intermediate – Essentials
intermediate_essentials = intermediate.children.find_or_initialize_by(title: "Essentials")
intermediate_essentials.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
intermediate_essentials.category_type = :body
intermediate_essentials.description = "Beyond – 28 day intermediate challenge – Intermediate essentials"
intermediate_essentials.save!

## Essentials – Lesson 1
lesson_1 = intermediate_essentials.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << intermediate_essentials
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.resource.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/introduction-to-the-28-day-challenge.pdf"),
  filename: "introduction-to-the-28-day-challenge.pdf",
  content_type: "application/pdf"
)
lesson_1.description = "Beyond – 28 day challenge – Intermediate – Essentials – Introduction"
lesson_1.save!

## Essentials – Lesson 2
lesson_2 = intermediate_essentials.lessons.find_or_initialize_by(title: "Nutrition planner")
lesson_2.categories << intermediate_essentials
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/nutrition-planner.jpg"),
  filename: "nutrition-planner.jpg",
  content_type: "image/jpeg"
)
lesson_2.resource.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/nutrition-planner-sheet.pdf"),
  filename: "nutrition-planner-sheet.pdf",
  content_type: "application/pdf"
)
lesson_2.description = "Beyond – 28 day challenge – Intermediate – Essentials – Nutrition planner"
lesson_2.save!

## Essentials – Lesson 3
lesson_3 = intermediate_essentials.lessons.find_or_initialize_by(title: "Recipes")
lesson_3.categories << intermediate_essentials
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/recipes.jpg"),
  filename: "recipes.jpg",
  content_type: "image/jpeg"
)
lesson_3.resource.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/recipes.pdf"),
  filename: "recipes.pdf",
  content_type: "application/pdf"
)
lesson_3.description = "Beyond – 28 day challenge – Intermediate – Essentials – Recipes"
lesson_3.save!

## Essentials – Lesson 4
lesson_4 = intermediate_essentials.lessons.find_or_initialize_by(title: "Sleep & Steps Tracker")
lesson_4.categories << intermediate_essentials
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/sleep-steps-tracker.jpg"),
  filename: "sleep-steps-tracker.jpg",
  content_type: "image/jpeg"
)
lesson_4.resource.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/essentials/sleep-steps-tracker-sheet.pdf"),
  filename: "sleep-steps-tracker-sheet.pdf",
  content_type: "application/pdf"
)
lesson_4.description = "Beyond – 28 day challenge – Intermediate – Essentials – Sleep & Steps Tracker"
lesson_4.save!

