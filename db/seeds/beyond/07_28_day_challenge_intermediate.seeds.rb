# Relationships
challenge_28_day = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs").children.find_by(title: "28 day challenge")

# 28 Day Challenge – Intermediate
intermediate = challenge_28_day.children.find_or_initialize_by(title: "Intermediate")
intermediate.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/intermediate/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
intermediate.category_type = :body
intermediate.description = "Intermediate challenge"
intermediate.save!
