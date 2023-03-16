# Relationships
rebuild = Category.find_by(title: "Postpartum").children.find_by(title: "Rebuild")

# The Postpartum Program
the_program = rebuild.children.find_or_initialize_by(title: "The Postpartum Program")
the_program.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/the-postpartum-program/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
the_program.category_type = :body
the_program.description = "The Postpartum Program"
the_program.save!
