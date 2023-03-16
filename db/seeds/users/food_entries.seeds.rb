after "users:admins", "users:users" do
  # Robin
  robin = User.find_by(email: "robin@motherfit.co.uk")

  foods = {
    food_1: {
      title: "Porridge",
      calories_consumed: 171,
      date: Date.current,
      time: Time.current
    },
    food_2: {
      title: "Bacon Sandwich",
      calories_consumed: 215,
      date: Date.current,
      time: Time.current
    },
    food_3: {
      title: "Salad",
      calories_consumed: 78,
      date: Date.current,
      time: Time.current
    },
    food_4: {
      title: "Crackers & Cheese",
      calories_consumed: 215,
      date: Date.current,
      time: Time.current
    },
    food_5: {
      title: "Pringles",
      calories_consumed: 150,
      date: Date.current,
      time: Time.current
    }
  }

  foods.each do |key, value|
    key = robin.food_entries.build
    key.title = value[:title]
    key.calories_consumed = value[:calories_consumed]
    key.date = value[:date]
    key.time = value[:time]
    key.created_at = Date.current
    key.save!
  end
end
