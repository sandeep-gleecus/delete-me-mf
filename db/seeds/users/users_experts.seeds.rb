after "users:admins" do
  # Expert 1 – Breathwork Facilitator
  expert_1 = User.find_or_initialize_by(email: "breathwork-facilitator@motherfit.co.uk")
  expert_1.name = "Sophie Belle"
  expert_1.password = "Password1"
  expert_1.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/breathwork-facilitator.jpg"),
    filename: "breathwork-facilitator.jpg",
    content_type: "image/jpeg"
  )
  expert_1.motherhood_stage = :beyond
  expert_1.most_recent_birth_date = "20/08/2019"
  expert_1.save!

  # Expert 2 – C-Section Scar Therapist
  expert_2 = User.find_or_initialize_by(email: "c-section-scar-therapist@motherfit.co.uk")
  expert_2.name = "Hannah Poulton"
  expert_2.password = "Password1"
  expert_2.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/c-section-scar-therapist.jpg"),
    filename: "c-section-scar-therapist.jpg",
    content_type: "image/jpeg"
  )
  expert_2.motherhood_stage = :beyond
  expert_2.most_recent_birth_date = "20/08/2019"
  expert_2.save!

  # Expert 3 – Children’s Emotional Wellbeing
  expert_3 = User.find_or_initialize_by(email: "childrens-emotional-wellbeing@motherfit.co.uk")
  expert_3.name = "Jenna Farrelly"
  expert_3.password = "Password1"
  expert_3.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/childrens-emotional-wellbeing.jpg"),
    filename: "childrens-emotional-wellbeing.jpg",
    content_type: "image/jpeg"
  )
  expert_3.motherhood_stage = :beyond
  expert_3.most_recent_birth_date = "20/08/2019"
  expert_3.save!

  # Expert 4 – Confidence Coach
  expert_4 = User.find_or_initialize_by(email: "confidence-coach@motherfit.co.uk")
  expert_4.name = "Laura Amy"
  expert_4.password = "Password1"
  expert_4.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/confidence-coach.jpg"),
    filename: "confidence-coach.jpg",
    content_type: "image/jpeg"
  )
  expert_4.motherhood_stage = :beyond
  expert_4.most_recent_birth_date = "20/08/2019"
  expert_4.save!

  # Expert 5 – Dental Health
  expert_5 = User.find_or_initialize_by(email: "dental-health@motherfit.co.uk")
  expert_5.name = "Caroline Hayden"
  expert_5.password = "Password1"
  expert_5.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/dental-health.jpg"),
    filename: "dental-health.jpg",
    content_type: "image/jpeg"
  )
  expert_5.motherhood_stage = :beyond
  expert_5.most_recent_birth_date = "20/08/2019"
  expert_5.save!

  # Expert 6 – Doula
  expert_6 = User.find_or_initialize_by(email: "doula@motherfit.co.uk")
  expert_6.name = "Azeeta Nielsen"
  expert_6.password = "Password1"
  expert_6.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/doula.jpg"),
    filename: "doula.jpg",
    content_type: "image/jpeg"
  )
  expert_6.motherhood_stage = :beyond
  expert_6.most_recent_birth_date = "20/08/2019"
  expert_6.save!

  # Expert 7 – First Aid
  expert_7 = User.find_or_initialize_by(email: "first-aid@motherfit.co.uk")
  expert_7.name = "Sam Mackey"
  expert_7.password = "Password1"
  expert_7.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/first-aid.jpg"),
    filename: "first-aid.jpg",
    content_type: "image/jpeg"
  )
  expert_7.motherhood_stage = :beyond
  expert_7.most_recent_birth_date = "20/08/2019"
  expert_7.save!

  # Expert 8 – Founder, Fitness and Nutrition
  # This is Michelle and is handled by admins.seeds.rb

  # Expert 9 – Hypnobirthing
  expert_9 = User.find_or_initialize_by(email: "hypnobirthing@motherfit.co.uk")
  expert_9.name = "Tamara Cianfini"
  expert_9.password = "Password1"
  expert_9.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/hypnobirthing.jpg"),
    filename: "hypnobirthing.jpg",
    content_type: "image/jpeg"
  )
  expert_9.motherhood_stage = :beyond
  expert_9.most_recent_birth_date = "20/08/2019"
  expert_9.save!

  # Expert 10 – Lactation Consultant
  expert_10 = User.find_or_initialize_by(email: "lactation-consultant@motherfit.co.uk")
  expert_10.name = "Heidi Hembrey"
  expert_10.password = "Password1"
  expert_10.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/lactation-consultant.jpg"),
    filename: "lactation-consultant.jpg",
    content_type: "image/jpeg"
  )
  expert_10.motherhood_stage = :beyond
  expert_10.most_recent_birth_date = "20/08/2019"
  expert_10.save!

  # Expert 11 – Meditation
  expert_11 = User.find_or_initialize_by(email: "meditation@motherfit.co.uk")
  expert_11.name = "Trisha Champaneri"
  expert_11.password = "Password1"
  # expert_11.avatar.attach(
  #   io: File.open("app/assets/images/seeds/users/experts/meditation.jpg"),
  #   filename: "meditation.jpg",
  #   content_type: "image/jpeg"
  # )
  expert_11.motherhood_stage = :beyond
  expert_11.most_recent_birth_date = "20/08/2019"
  expert_11.save!

  # Expert 12 – Midwife
  expert_12 = User.find_or_initialize_by(email: "midwife@motherfit.co.uk")
  expert_12.name = "Meghan Roe"
  expert_12.password = "Password1"
  expert_12.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/midwife.jpg"),
    filename: "midwife.jpg",
    content_type: "image/jpeg"
  )
  expert_12.motherhood_stage = :beyond
  expert_12.most_recent_birth_date = "20/08/2019"
  expert_12.save!

  # Expert 13 – Pelvic Health
  expert_13 = User.find_or_initialize_by(email: "pelvic-health@motherfit.co.uk")
  expert_13.name = "Bally Lidder"
  expert_13.password = "Password1"
  expert_13.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/pelvic-health.jpg"),
    filename: "pelvic-health.jpg",
    content_type: "image/jpeg"
  )
  expert_13.motherhood_stage = :beyond
  expert_13.most_recent_birth_date = "20/08/2019"
  expert_13.save!

  # Expert 14 – Perinatal Education
  expert_14 = User.find_or_initialize_by(email: "perinatal-education@motherfit.co.uk")
  expert_14.name = "Keeley Collins"
  expert_14.password = "Password1"
  expert_14.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/perinatal-education.jpg"),
    filename: "perinatal-education.jpg",
    content_type: "image/jpeg"
  )
  expert_14.motherhood_stage = :beyond
  expert_14.most_recent_birth_date = "20/08/2019"
  expert_14.save!

  # Expert 14 – Perinatal Education
  expert_14 = User.find_or_initialize_by(email: "perinatal-education@motherfit.co.uk")
  expert_14.name = "Keeley Collins"
  expert_14.password = "Password1"
  expert_14.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/perinatal-education.jpg"),
    filename: "perinatal-education.jpg",
    content_type: "image/jpeg"
  )
  expert_14.motherhood_stage = :beyond
  expert_14.most_recent_birth_date = "20/08/2019"
  expert_14.save!

  # Expert 15 – Pilates Instructor
  expert_15 = User.find_or_initialize_by(email: "pilates-instructor@motherfit.co.uk")
  expert_15.name = "Jemma Winborn"
  expert_15.password = "Password1"
  expert_15.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/pilates-instructor.jpg"),
    filename: "pilates-instructor.jpg",
    content_type: "image/jpeg"
  )
  expert_15.motherhood_stage = :beyond
  expert_15.most_recent_birth_date = "20/08/2019"
  expert_15.save!

  # Expert 16 – Sleep Consultant
  expert_16 = User.find_or_initialize_by(email: "sleep-consultant@motherfit.co.uk")
  expert_16.name = "Lisa Lamb"
  expert_16.password = "Password1"
  expert_16.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/sleep-consultant.jpg"),
    filename: "sleep-consultant.jpg",
    content_type: "image/jpeg"
  )
  expert_16.motherhood_stage = :beyond
  expert_16.most_recent_birth_date = "20/08/2019"
  expert_16.save!

  # Expert 16 – Yoga Instructor
  expert_17 = User.find_or_initialize_by(email: "yoga-instructor@motherfit.co.uk")
  expert_17.name = "Abbey Elsie"
  expert_17.password = "Password1"
  expert_17.avatar.attach(
    io: File.open("app/assets/images/seeds/users/experts/yoga-instructor.jpg"),
    filename: "yoga-instructor.jpg",
    content_type: "image/jpeg"
  )
  expert_17.motherhood_stage = :beyond
  expert_17.most_recent_birth_date = "20/08/2019"
  expert_17.save!
end
