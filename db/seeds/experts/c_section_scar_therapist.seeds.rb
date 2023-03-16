# Relationships
experts = Category.find_by(title: "Experts")
user_c_section_scar_therapist = User.find_by(email: "c-section-scar-therapist@motherfit.co.uk")

# C-Section Scar Therapist
c_section = experts.children.find_or_initialize_by(title: "C-Section Scar Therapist")
c_section.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/c-section-scar-therapist/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
c_section.resource.attach(
  io: File.open("app/assets/images/seeds/experts/c-section-scar-therapist/contact-details.pdf"),
  filename: "contact-details.pdf",
  content_type: "application/pdf"
)
c_section.category_type = :mind
c_section.description = "C-Section Scar Therapist"
c_section.save!

## Lesson 1
lesson_1 = c_section.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << c_section
lesson_1.user = user_c_section_scar_therapist
lesson_1.lesson_type = :mind
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/c-section-scar-therapist/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "C-Section Scar Therapist – Introduction"
lesson_1.duration = "0:55"
lesson_1.vimeo_url = "https://vimeo.com/668308221"
lesson_1.save!

## Lesson 2
lesson_2 = c_section.lessons.find_or_initialize_by(title: "How to prepare for C-section")
lesson_2.categories << c_section
lesson_2.user = user_c_section_scar_therapist
lesson_2.lesson_type = :mind
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/c-section-scar-therapist/how-to-prepare-for-c-section.jpg"),
  filename: "how-to-prepare-for-c-section.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "C-Section Scar Therapist – How to prepare for C-section"
lesson_2.duration = "5:53"
lesson_2.vimeo_url = "https://vimeo.com/655593163"
lesson_2.save!

## Lesson 3
lesson_3 = c_section.lessons.find_or_initialize_by(title: "Recovery after your C-section")
lesson_3.categories << c_section
lesson_3.user = user_c_section_scar_therapist
lesson_3.lesson_type = :mind
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/c-section-scar-therapist/recovery-after-your-c-section.jpg"),
  filename: "recovery-after-your-c-section.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "C-Section Scar Therapist – Recovery after your C-section"
lesson_3.duration = "5:53"
lesson_3.vimeo_url = "https://vimeo.com/655594288"
lesson_3.save!

## Lesson 4
lesson_4 = c_section.lessons.find_or_initialize_by(title: "5, 10, 15 years post C-section recovery")
lesson_4.categories << c_section
lesson_4.user = user_c_section_scar_therapist
lesson_4.lesson_type = :mind
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/experts/c-section-scar-therapist/5-10-15-years-post-c-section-recovery.jpg"),
  filename: "5-10-15-years-post-c-section-recovery.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "5, 10, 15 years post C-section recovery"
lesson_4.duration = "12:06"
lesson_4.vimeo_url = "https://vimeo.com/655593762"
lesson_4.save!
