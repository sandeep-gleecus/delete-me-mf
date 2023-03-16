# Relationships
challenge_28_day = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge")

# 28 day challenge – Beginner
beginner = challenge_28_day.children.find_or_initialize_by(title: "Beginner")
beginner.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/beginner/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
beginner.category_type = :body
beginner.description = "Beginner challenge"
beginner.save!
