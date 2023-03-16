# Relationships
challenges_and_programs = Category.find_by(title: "Beyond").children.find_by(title: "Challenges and programs")
postpartum_rebuild_your_core = Category.find_by(title: "Postpartum").children.find_by(title: "Rebuild").children.find_by(title: "Rebuild your core")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Rebuild your core
rebuild_your_core = challenges_and_programs.children.find_or_initialize_by(title: "Rebuild your core")
rebuild_your_core.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
rebuild_your_core.category_type = :body
rebuild_your_core.description = "Rebuild your core Program"
rebuild_your_core.save!

## Rebuild your core – Lesson 1
lesson_1 = postpartum_rebuild_your_core.lessons.find_by(title: "Introduction")
lesson_1.categories << rebuild_your_core
lesson_1.save!

## Rebuild your core – Lesson 2
lesson_2 = postpartum_rebuild_your_core.lessons.find_by(title: "Step 1: Learn neutral")
lesson_2.categories << rebuild_your_core
lesson_2.save!

## Rebuild your core – Lesson 3
lesson_3 = postpartum_rebuild_your_core.lessons.find_by(title: "Step 2: Breath with movement")
lesson_3.categories << rebuild_your_core
lesson_3.save!

## Rebuild your core – Lesson 4
lesson_4 = postpartum_rebuild_your_core.lessons.find_by(title: "Step 3: Breath, move, press")
lesson_4.categories << rebuild_your_core
lesson_4.save!

## Rebuild your core – Lesson 5
lesson_5 = postpartum_rebuild_your_core.lessons.find_by(title: "Step 4: Foundations for pushups, planks, burpees")
lesson_5.categories << rebuild_your_core
lesson_5.save!

## Rebuild your core – Lesson 6
lesson_6 = postpartum_rebuild_your_core.lessons.find_by(title: "Step 5: Progressing core engagement")
lesson_6.categories << rebuild_your_core
lesson_6.save!

## Rebuild your core – Lesson 7
lesson_7 = postpartum_rebuild_your_core.lessons.find_by(title: "Step 6: Compound movements")
lesson_7.categories << rebuild_your_core
lesson_7.save!
