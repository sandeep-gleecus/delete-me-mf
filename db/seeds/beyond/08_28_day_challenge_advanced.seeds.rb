# Relationships
challenge_28_day = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge")

# 28 Day Challenge – Advanced
advanced = challenge_28_day.children.find_or_initialize_by(title: "Advanced")
advanced.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/advanced/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
advanced.category_type = :body
advanced.description = "Advanced challenge"
advanced.save!
