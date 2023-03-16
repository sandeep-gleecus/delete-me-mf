# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")

# 28 day challenge
challenge_28_day = challenges_and_programs.children.find_or_initialize_by(title: "28 day challenge")
challenge_28_day.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/28-day-challenge/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
challenge_28_day.category_type = :body
challenge_28_day.description = "New you challenge"
challenge_28_day.save!
