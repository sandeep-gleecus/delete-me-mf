# Relationships
beyond = Category.find_by(title: "Beyond")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Secondary
workouts = beyond.children.find_or_initialize_by(title: "Workouts")
workouts.featured_image.attach(
  io: File.open("app/assets/images/seeds/beyond/workouts.jpg"),
  filename: "workouts.jpg",
  content_type: "image/jpeg"
)
workouts.category_type = :body
workouts.description = "Beyond – Workouts"
workouts.save!
