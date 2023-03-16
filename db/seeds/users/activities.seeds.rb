after "users:admins", "users:users" do
  activities = {
    activity_1: {
      title: "Yoga",
      description: "Yoga with Abbey",
      activity_type: "yoga",
      time_spent: 20,
      calories_burned: 50,
      date: Date.current - 1.month + 1.day,
      time: Time.current - 1.month + 1.day
    },
    activity_2: {
      title: "Swimming",
      description: "Today i went swimming",
      activity_type: "swim",
      time_spent: 60,
      calories_burned: 140,
      date: Date.current - 1.month + 2.day,
      time: Time.current - 1.month + 2.day
    },
    activity_3: {
      title: "Arms & Abs",
      description: "Today i did an arms and abs workout",
      activity_type: "workout",
      time_spent: 60,
      calories_burned: 267,
      date: Date.current - 1.month + 3.day,
      time: Time.current - 1.month + 3.day
    },
    activity_4: {
      title: "Meditation",
      description: "Today i did some meditation",
      activity_type: "workout",
      time_spent: 20,
      calories_burned: 0,
      date: Date.current - 1.month + 4.day,
      time: Time.current - 1.month + 4.day
    },
    activity_5: {
      title: "Breathwork",
      description: "Today i did some breathwork",
      activity_type: "workout",
      time_spent: 20,
      calories_burned: 0,
      date: Date.current - 1.month + 5.day,
      time: Time.current - 1.month + 5.day
    },
    activity_6: {
      title: "Cycling",
      description: "Today i did some cycling around the park",
      activity_type: "workout",
      time_spent: 30,
      calories_burned: 250,
      date: Date.current - 1.month + 6.day,
      time: Time.current - 1.month + 6.day
    },
    activity_7: {
      title: "Yoga",
      description: "Today i did some yoga with Abbey",
      activity_type: "yoga",
      time_spent: 30,
      calories_burned: 250,
      date: Date.current - 1.month + 7.day,
      time: Time.current - 1.month + 7.day
    },
    activity_8: {
      title: "Running",
      description: "Today i went for a run",
      activity_type: "run",
      time_spent: 30,
      calories_burned: 175,
      date: Date.current - 1.month + 8.day,
      time: Time.current - 1.month + 8.day
    },
  }

  # Abbie
  abbie = User.find_by(email: "abbie@motherfit.co.uk")

  # Abbie Activities
  activities.each do |key, value|
    key = abbie.activities.build
    key.title = value[:title]
    key.description = value[:description]
    key.activity_type = value[:activity_type]
    key.time_spent = value[:time_spent]
    key.calories_burned = value[:calories_burned]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # Claire
  claire = User.find_by(email: "claire@motherfit.co.uk")

  # Claire Activities
  activities.each do |key, value|
    key = claire.activities.build
    key.title = value[:title]
    key.description = value[:description]
    key.activity_type = value[:activity_type]
    key.time_spent = value[:time_spent]
    key.calories_burned = value[:calories_burned]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # Robin
  robin = User.find_by(email: "robin@motherfit.co.uk")

  # Robin Activities
  activities.each do |key, value|
    key = robin.activities.build
    key.title = value[:title]
    key.description = value[:description]
    key.activity_type = value[:activity_type]
    key.time_spent = value[:time_spent]
    key.calories_burned = value[:calories_burned]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # erica
  erica = User.find_by(email: "erica@motherfit.co.uk")

  # erica Activities
  activities.each do |key, value|
    key = erica.activities.build
    key.title = value[:title]
    key.description = value[:description]
    key.activity_type = value[:activity_type]
    key.time_spent = value[:time_spent]
    key.calories_burned = value[:calories_burned]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # michelle
  michelle = User.find_by(email: "michelle@motherfit.co.uk")

  # michelle Activities
  activities.each do |key, value|
    key = michelle.activities.build
    key.title = value[:title]
    key.description = value[:description]
    key.activity_type = value[:activity_type]
    key.time_spent = value[:time_spent]
    key.calories_burned = value[:calories_burned]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end
end
