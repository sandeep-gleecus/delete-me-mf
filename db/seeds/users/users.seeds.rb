after "users:admins" do
  # User 1 – Pregnant mother due in five months
  user_1 = User.find_or_initialize_by(email: "abbie@motherfit.co.uk")
  user_1.name = "Abbie Tucker"
  user_1.password = "Password1"
  user_1.free_subscription = true
  user_1.avatar.attach(
    io: File.open("app/assets/images/seeds/users/abbie-tucker.jpg"),
    filename: "abbie-tucker.jpg",
    content_type: "image/jpeg"
  )
  user_1.motherhood_stage = :pregnancy
  user_1.pregnancy_due_date = Date.current + 5.months
  user_1.save!

  # User 2 – Postpartum mother that has a two week old baby (the fourth trimester)
  user_2 = User.find_or_initialize_by(email: "claire@motherfit.co.uk")
  user_2.name = "Claire Fontaine"
  user_2.password = "Password1"
  user_2.free_subscription = true
  user_2.avatar.attach(
    io: File.open("app/assets/images/seeds/users/claire-fontaine.jpg"),
    filename: "claire-fontaine.jpg",
    content_type: "image/jpeg"
  )
  user_2.motherhood_stage = :postpartum
  user_2.birth_date = 2.weeks.ago
  user_2.save!

  # User 3 – Postpartum mother that has a 16 week old baby (rebuild)
  user_3 = User.find_or_initialize_by(email: "erica@motherfit.co.uk")
  user_3.name = "Erica Kuznetsov"
  user_3.password = "Password1"
  user_3.free_subscription = true
  user_3.avatar.attach(
    io: File.open("app/assets/images/seeds/users/erica-kuznetsov.jpg"),
    filename: "erica-kuznetsov.jpg",
    content_type: "image/jpeg"
  )
  user_3.motherhood_stage = :postpartum
  user_3.birth_date = 16.weeks.ago
  user_3.save!

  # User 4 – Beyond mother with two children
  user_4 = User.find_or_initialize_by(email: "robin@motherfit.co.uk")
  user_4.name = "Robin Chessington"
  user_4.password = "Password1"
  user_4.free_subscription = true
  user_4.avatar.attach(
    io: File.open("app/assets/images/seeds/users/robin-chesterton.jpg"),
    filename: "robin-chesterton.jpg",
    content_type: "image/jpeg"
  )
  user_4.motherhood_stage = :beyond
  user_4.most_recent_birth_date = "01/02/2021"
  user_4.height = 152
  user_4.date_of_birth = "01/01/1990"
  user_4.weight_entries.build(weight: 57)
  user_4.fitness_goal = "fat_loss"
  user_4.activity_multiplier = "extra"
  user_4.save!
end
