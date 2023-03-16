after "users:admins", "users:users" do
  entries = {
    entry_1: {
      title: "Day in bed",
      description: "Today i felt very poorly and needed a day to rest and recover, so i curled up in my bed watching TV all day",
      date: Date.current - 1.day,
      time: Time.current - 1.day
    },
    entry_2: {
      title: "Family Photo",
      description: "We decided to take a family photo today",
      date: Date.current - 2.day,
      time: Time.current - 2.day
    },
    entry_3: {
      title: "Trip to the Zoo",
      description: "We took a trip to the zoo and saw some really cute animals!",
      date: Date.current - 3.day,
      time: Time.current - 3.day
    },
    entry_4: {
      title: "Reflection",
      description: "I spent the day relecting on my life, and I am very greatful for what I have",
      date: Date.current - 4.day,
      time: Time.current - 4.day
    },
    entry_5: {
      title: "Feeling Sad",
      description: "Today i have been feeling sad, im not sure why, but my husband has been making me feel better with cups of tea!",
      date: Date.current - 5.day,
      time: Time.current - 5.day
    },
    entry_6: {
      title: "Walk with my friends",
      description: "Today me and my friends went on a long walk",
      date: Date.current - 6.day,
      time: Time.current - 6.day
    },
    entry_7: {
      title: "Town Trip",
      description: "Me and my husband went on a shopping spree!!",
      date: Date.current - 7.day,
      time: Time.current - 7.day
    },
    entry_8: {
      title: "Alone day",
      description: "Today I was alone, I spent the day tidying the house",
      date: Date.current - 8.day,
      time: Time.current - 8.day
    }
  }

  # Abbie
  abbie = User.find_by(email: "abbie@motherfit.co.uk")

  # Abbie Entries
  entries.each do |key, value|
    key = abbie.journal_entries.build
    key.title = value[:title]
    key.description = value[:description]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # Claire
  claire = User.find_by(email: "claire@motherfit.co.uk")

  # Claire Entries
  entries.each do |key, value|
    key = claire.journal_entries.build
    key.title = value[:title]
    key.description = value[:description]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # Erica
  erica = User.find_by(email: "erica@motherfit.co.uk")

  # Erica Entries
  entries.each do |key, value|
    key = erica.journal_entries.build
    key.title = value[:title]
    key.description = value[:description]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # Robin
  robin = User.find_by(email: "robin@motherfit.co.uk")

  # Robin Entries
  entries.each do |key, value|
    key = robin.journal_entries.build
    key.title = value[:title]
    key.description = value[:description]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end

  # Michelle
  michelle = User.find_by(email: "michelle@motherfit.co.uk")

  # Michelle Entries
  entries.each do |key, value|
    key = michelle.journal_entries.build
    key.title = value[:title]
    key.description = value[:description]
    key.date = value[:date]
    key.time = value[:time]
    key.save!
  end
end
