# Relationships
beyond = Category.find_by(title: "Beyond")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# LIVE
live = beyond.children.find_or_initialize_by(title: "LIVE")
live.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
live.description = "Beyond LIVE"
live.save!

start_date = DateTime.current.beginning_of_month

# create and repeat new Lessons
(start_date..(start_date + 1.month).end_of_month).to_a.each do |date|
  if date.monday?
    # LIVE Beyond - Lesson 1 (Every Monday at 6:45am)
    beyond_lesson_1 = live.lessons.new(title: "Monday – HIIT – 30 mins")
    beyond_lesson_1.categories << live
    beyond_lesson_1.user = michelle
    beyond_lesson_1.lesson_type = :body
    beyond_lesson_1.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/beyond-monday-live.jpg"),
      filename: "beyond-monday-live.jpg",
      content_type: "image/jpeg"
    )
    beyond_lesson_1.description = "Beyond – LIVE – Monday at 6:45am – HIIT"
    beyond_lesson_1.zoom_url = "https://us02web.zoom.us/j/85809422710"
    beyond_lesson_1.start_time = date + 6.hours + 45.minutes
    beyond_lesson_1.live = true
    beyond_lesson_1.save!
  elsif date.tuesday?
    # LIVE Beyond - Lesson 2 (Every Tuesday at 6:45am)
    beyond_lesson_2 = live.lessons.new(title: "Tuesday – HIIT with Weights – 30 mins")
    beyond_lesson_2.categories << live
    beyond_lesson_2.user = michelle
    beyond_lesson_2.lesson_type = :body
    beyond_lesson_2.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/beyond-tuesday-live.jpg"),
      filename: "beyond-tuesday-live.jpg",
      content_type: "image/jpeg"
    )
    beyond_lesson_2.description = "Beyond – LIVE – Tuesday at 6:45am – HIIT with Weights"
    beyond_lesson_2.zoom_url = "https://us02web.zoom.us/j/85809422720"
    beyond_lesson_2.start_time = date + 6.hours + 45.minutes
    beyond_lesson_2.live = true
    beyond_lesson_2.save!
  elsif date.wednesday?
    # LIVE Beyond - Lesson 3 (Every Wednesday at 6:45am)
    beyond_lesson_3 = live.lessons.new(title: "Wednesday – Upper Body – 40 mins")
    beyond_lesson_3.categories << live
    beyond_lesson_3.user = michelle
    beyond_lesson_3.lesson_type = :body
    beyond_lesson_3.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/beyond-wednesday-live.jpg"),
      filename: "beyond-wednesday-live.jpg",
      content_type: "image/jpeg"
    )
    beyond_lesson_3.description = "Beyond – LIVE – Wednesday at 6:45am – Upper Body"
    beyond_lesson_3.zoom_url = "https://us02web.zoom.us/j/89082365715"
    beyond_lesson_3.start_time = date + 6.hours + 45.minutes
    beyond_lesson_3.live = true
    beyond_lesson_3.save!
  elsif date.thursday?
    # LIVE Beyond - Lesson 4 (Every Thursday at 6:45am)
    beyond_lesson_4 = live.lessons.new(title: "Thursday – Express – 20 mins")
    beyond_lesson_4.categories << live
    beyond_lesson_4.user = michelle
    beyond_lesson_4.lesson_type = :body
    beyond_lesson_4.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/beyond-thursday-live.jpg"),
      filename: "beyond-thursday-live.jpg",
      content_type: "image/jpeg"
    )
    beyond_lesson_4.description = "Beyond – LIVE – Thursday at 6:45am – Express"
    beyond_lesson_4.zoom_url = "https://us02web.zoom.us/j/82994306041"
    beyond_lesson_4.start_time = date + 6.hours + 45.minutes
    beyond_lesson_4.live = true
    beyond_lesson_4.save!
  elsif date.friday?
    # LIVE Beyond - Lesson 5 (Every Friday at 6:45am)
    beyond_lesson_5 = live.lessons.new(title: "Friday – Lower Body – 40 mins")
    beyond_lesson_5.categories << live
    beyond_lesson_5.user = michelle
    beyond_lesson_5.lesson_type = :body
    beyond_lesson_5.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/beyond-friday-live.jpg"),
      filename: "beyond-friday-live.jpg",
      content_type: "image/jpeg"
    )
    beyond_lesson_5.description = "Beyond – LIVE – Friday at 6:45am – Lower Body"
    beyond_lesson_5.zoom_url = "https://us02web.zoom.us/j/89425244488"
    beyond_lesson_5.start_time = date + 6.hours + 45.minutes
    beyond_lesson_5.live = true
    beyond_lesson_5.save!
  elsif date.saturday?
    # LIVE Beyond - Lesson 6 (Every Saturday at 8:30am)
    beyond_lesson_6 = live.lessons.new(title: "Saturday – 8:30 – Boxing – 40 mins")
    beyond_lesson_6.categories << live
    beyond_lesson_6.user = michelle
    beyond_lesson_6.lesson_type = :body
    beyond_lesson_6.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/beyond-saturday-live.jpg"),
      filename: "beyond-saturday-live.jpg",
      content_type: "image/jpeg"
    )
    beyond_lesson_6.description = "Beyond – LIVE – Saturday at 8:30am – Boxing"
    beyond_lesson_6.zoom_url = "https://us02web.zoom.us/j/83978615871"
    beyond_lesson_6.start_time = date + 8.hours + 30.minutes
    beyond_lesson_6.live = true
    beyond_lesson_6.save!
  end
end
