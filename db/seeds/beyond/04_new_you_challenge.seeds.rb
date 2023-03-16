# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# New You Challenge
new_you = challenges_and_programs.children.find_or_initialize_by(title: "New you challenge")
new_you.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
new_you.category_type = :body
new_you.description = "New you challenge"
new_you.save!

# Lesson 1
lesson_1 = new_you.lessons.find_or_initialize_by(title: "Recipes to nourish you through the challenge")
lesson_1.categories << new_you
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/recipes-to-nourish-you-through-the-challenge.jpg"),
  filename: "recipes-to-nourish-you-through-the-challenge.jpg",
  content_type: "image/jpeg"
)
lesson_1.resource.attach(
  io: File.open("app/assets/images/seeds/beyond/new-you-challenge/recipes-to-nourish-you-through-the-challenge.pdf"),
  filename: "recipes-to-nourish-you-through-the-challenge.pdf",
  content_type: "application/pdf"
)
lesson_1.description = "Beyond – New you challenge – Recipes to nourish you through the challenge"
lesson_1.save!
