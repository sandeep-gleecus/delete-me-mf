# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# 8 Week Strength
challenge_8_week_strength = challenges_and_programs.children.find_or_initialize_by(title: "8 week strength")
challenge_8_week_strength.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/8-week-strength/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
challenge_8_week_strength.category_type = :body
challenge_8_week_strength.description = "8 Week Strength"
challenge_8_week_strength.save!
