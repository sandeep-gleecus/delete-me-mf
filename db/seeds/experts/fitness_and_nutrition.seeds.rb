# Relationships
experts = Category.find_by(title: "Experts")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

## Founder, Fitness and Nutrition Expert
fitness_nutrition = experts.children.find_or_initialize_by(title: "Founder, Fitness and Nutrition")
fitness_nutrition.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/fitness-nutrition/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
fitness_nutrition.resource.attach(
  io: File.open("app/assets/images/seeds/experts/fitness-nutrition/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
fitness_nutrition.category_type = :body
fitness_nutrition.description = "Expert – Founder, Fitness and Nutrition"
fitness_nutrition.save!

# Lesson 1
lesson_1 = fitness_nutrition.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << fitness_nutrition
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/fitness-nutrition/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Founder, Fitness and Nutrition – Introduction"
lesson_1.duration = "2:18"
lesson_1.vimeo_url = "https://vimeo.com/497270396"
lesson_1.save!
