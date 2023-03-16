# Relationships
rebuild = Category.find_by(title: "Postpartum").children.find_by(title: "Rebuild")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# Rebuild Your Core
rebuild_your_core = rebuild.children.find_or_initialize_by(title: "Rebuild your core")
rebuild_your_core.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/overview.jpg"),
  filename: "overview.jpg",
  content_type: "image/jpeg"
)
rebuild_your_core.category_type = :body
rebuild_your_core.description = "Postpartum Rebuild Your Core"
rebuild_your_core.save!

## Rebuild Your Core – Lesson 1
lesson_1 = rebuild_your_core.lessons.find_or_initialize_by(title: "Introduction")
lesson_1.categories << rebuild_your_core
lesson_1.user = michelle
lesson_1.lesson_type = :body
lesson_1.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/introduction.jpg"),
  filename: "introduction.jpg",
  content_type: "image/jpeg"
)
lesson_1.description = "Postpartum Rebuild Your Core – Introduction"
lesson_1.duration = "1:43"
lesson_1.vimeo_url = "https://vimeo.com/632748643"
lesson_1.save!

## Rebuild Your Core – Lesson 2
lesson_2 = rebuild_your_core.lessons.find_or_initialize_by(title: "Step 1: Learn neutral")
lesson_2.categories << rebuild_your_core
lesson_2.user = michelle
lesson_2.lesson_type = :body
lesson_2.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/step-1-learn-neutral.jpg"),
  filename: "step-1-learn-neutral.jpg",
  content_type: "image/jpeg"
)
lesson_2.description = "Postpartum Rebuild Your Core – Step 1: Learn neutral"
lesson_2.duration = "9:16"
lesson_2.vimeo_url = "https://vimeo.com/632748862"
lesson_2.save!

## Rebuild Your Core – Lesson 3
lesson_3 = rebuild_your_core.lessons.find_or_initialize_by(title: "Step 2: Breath with movement")
lesson_3.categories << rebuild_your_core
lesson_3.user = michelle
lesson_3.lesson_type = :body
lesson_3.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/breath-with-movement.jpg"),
  filename: "breath-with-movement.jpg",
  content_type: "image/jpeg"
)
lesson_3.description = "Postpartum Rebuild Your Core – Step 2: Breath with movement"
lesson_3.duration = "15:39"
lesson_3.vimeo_url = "https://vimeo.com/628486491"
lesson_3.save!

## Rebuild Your Core – Lesson 4
lesson_4 = rebuild_your_core.lessons.find_or_initialize_by(title: "Step 3: Breath, move, press")
lesson_4.categories << rebuild_your_core
lesson_4.user = michelle
lesson_4.lesson_type = :body
lesson_4.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/breath-move-press.jpg"),
  filename: "rebuild-core-3.jpg",
  content_type: "image/jpeg"
)
lesson_4.description = "Postpartum Rebuild Your Core – Step 3: Breath, move, press"
lesson_4.duration = "22:27"
lesson_4.vimeo_url = "https://vimeo.com/635983112"
lesson_4.save!

## Rebuild Your Core – Lesson 5
lesson_5 = rebuild_your_core.lessons.find_or_initialize_by(title: "Step 4: Foundations for pushups, planks, burpees")
lesson_5.categories << rebuild_your_core
lesson_5.user = michelle
lesson_5.lesson_type = :body
lesson_5.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/foundations-pushups-planks-burpees.jpg"),
  filename: "foundations-pushups-planks-burpees.jpg",
  content_type: "image/jpeg"
)
lesson_5.description = "Postpartum Rebuild Your Core – Step 4: Foundations for pushups, planks, burpees"
lesson_5.duration = "19:57"
lesson_5.vimeo_url = "https://vimeo.com/632752217"
lesson_5.save!

## Rebuild Your Core – Lesson 6
lesson_6 = rebuild_your_core.lessons.find_or_initialize_by(title: "Step 5: Progressing core engagement")
lesson_6.categories << rebuild_your_core
lesson_6.user = michelle
lesson_6.lesson_type = :body
lesson_6.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/progressing-core-engagement.jpg"),
  filename: "progressing-core-engagement.jpg",
  content_type: "image/jpeg"
)
lesson_6.description = "Postpartum Rebuild Your Core – Step 5: Progressing core engagement"
lesson_6.duration = "19:24"
lesson_6.vimeo_url = "https://vimeo.com/628494902"
lesson_6.save!

## Rebuild Your Core – Lesson 7
lesson_7 = rebuild_your_core.lessons.find_or_initialize_by(title: "Step 6: Compound movements")
lesson_7.categories << rebuild_your_core
lesson_7.user = michelle
lesson_7.lesson_type = :body
lesson_7.featured_image.attach(
  io: File.open("app/assets/images/seeds/postpartum/rebuild-your-core/compound-movements.jpg"),
  filename: "compound-movements.jpg",
  content_type: "image/jpeg"
)
lesson_7.description = "Postpartum Rebuild Your Core – Step 6: Compound movements"
lesson_7.duration = "15:26"
lesson_7.vimeo_url = "https://vimeo.com/628499018"
lesson_7.save!
