# Relationships
experts = Category.find_by(title: "Experts")
user_childrens_wellbeing = User.find_by(email: "childrens-emotional-wellbeing@motherfit.co.uk")

# Children’s Emotional Wellbeing
childrens_wellbeing = experts.children.find_or_initialize_by(title: "Children’s Emotional Wellbeing")
childrens_wellbeing.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/childrens-emotional-wellbeing/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
childrens_wellbeing.resource.attach(
  io: File.open("app/assets/images/seeds/experts/childrens-emotional-wellbeing/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
childrens_wellbeing.category_type = :mind
childrens_wellbeing.description = "Children’s Emotional Wellbeing"
childrens_wellbeing.save!

## Lesson 1
lesson_1 = childrens_wellbeing.lessons.find_or_initialize_by(title: "Supporting steps")
lesson_1.categories << childrens_wellbeing
lesson_1.user = user_childrens_wellbeing
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/childrens-emotional-wellbeing/supporting-steps.jpg"),
  filename: "supporting-steps.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Supporting Steps"
lesson_1.duration = "24:46"
lesson_1.vimeo_url = "https://vimeo.com/527512633"
lesson_1.save!
