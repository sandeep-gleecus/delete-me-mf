# Admin 1 – Michelle
admin_1 = User.find_or_initialize_by(email: "michelle@motherfit.co.uk")
admin_1.name = "Michelle Baynham"
admin_1.admin = true
admin_1.password = "Password1"
admin_1.avatar.attach(
  io: File.open("app/assets/images/seeds/users/admins/michelle-baynham.jpg"),
  filename: "michelle-baynham.jpg",
  content_type: "image/jpeg"
)
admin_1.motherhood_stage = :beyond
admin_1.most_recent_birth_date = "05/10/2021"
admin_1.height = 152
admin_1.date_of_birth = "01/01/1990"
admin_1.weight_entries.build(weight: 57)
admin_1.fitness_goal = "fat_loss"
admin_1.activity_multiplier = "extra"
admin_1.save!

# Admin 2 – Leno
admin_2 = User.find_or_initialize_by(email: "leno@motherfit.co.uk")
admin_2.name = "Leno Cainelli"
admin_2.admin = true
admin_2.password = "Password1"
admin_2.avatar.attach(
  io: File.open("app/assets/images/seeds/users/admins/leno-cainelli.jpg"),
  filename: "leno-cainelli.jpg",
  content_type: "image/jpeg"
)
admin_2.motherhood_stage = :beyond
admin_2.most_recent_birth_date = "20/08/2019"
admin_2.height = 152
admin_2.date_of_birth = "01/01/1990"
admin_2.weight_entries.build(weight: 57)
admin_2.fitness_goal = "fat_loss"
admin_2.activity_multiplier = "extra"
admin_2.save!

# Admin 3 – Zenon
admin_3 = User.find_or_initialize_by(email: "zenon@motherfit.co.uk")
admin_3.name = "Zenon Baynham"
admin_3.admin = true
admin_3.password = "Password1"
admin_3.avatar.attach(
  io: File.open("app/assets/images/seeds/users/admins/zenon-baynham.jpg"),
  filename: "leno-cainelli.jpg",
  content_type: "image/jpeg"
)
admin_3.motherhood_stage = :beyond
admin_3.most_recent_birth_date = "20/08/2019"
admin_3.height = 152
admin_3.date_of_birth = "01/01/1990"
admin_3.weight_entries.build(weight: 57)
admin_3.fitness_goal = "fat_loss"
admin_3.activity_multiplier = "extra"
admin_3.save!

# Admin 4 – Kurtis
admin_4 = User.find_or_initialize_by(email: "kurtis@fehrlabs.com")
admin_4.name = "Kurtis Fehr"
admin_4.admin = true
admin_4.password = "Password1"
admin_4.avatar.attach(
  io: File.open("app/assets/images/seeds/users/admins/kurtis-fehr.jpg"),
  filename: "leno-cainelli.jpg",
  content_type: "image/jpeg"
)
admin_4.motherhood_stage = :beyond
admin_4.most_recent_birth_date = "15/07/2020"
admin_4.height = 152
admin_4.date_of_birth = "01/01/1990"
admin_4.weight_entries.build(weight: 57)
admin_4.fitness_goal = "fat_loss"
admin_4.activity_multiplier = "extra"
admin_4.save!
