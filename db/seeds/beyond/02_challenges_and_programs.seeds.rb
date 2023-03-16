# Relationships
beyond = Category.find_by(title: "Beyond")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Challenges and programs
challenges_and_programs = beyond.children.find_or_initialize_by(title: "Challenges and programs")
challenges_and_programs.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/challenges-and-programs.jpg"),
  filename: "challenges-and-programs.jpg",
  content_type: "image/jpeg"
)
challenges_and_programs.description = "Beyond – Challenges and programs"
challenges_and_programs.save!
