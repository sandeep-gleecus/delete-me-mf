# Relationships
pregnancy = Category.find_by(title: "Pregnancy")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# LIVE
live = pregnancy.children.find_or_initialize_by(title: "LIVE")
live.featured_image.attach(
  io: File.open("app/assets/images/seeds/shared/live-workout-michelle.jpg"),
  filename: "live-workout-michelle.jpg",
  content_type: "image/jpeg"
)
live.description = "Pregnancy LIVE"
live.save!

start_date = DateTime.current.beginning_of_month

# create and repeat new Lessons
(start_date..(start_date + 1.month).end_of_month).to_a.each do |date|
  if date.monday?
    # LIVE Pregnancy – Lesson 1 (every Monday at 7:30am)
    pregnancy_lesson_1 = live.lessons.new(title: "Monday – 7:30 – IGTV – 20 mins")
    pregnancy_lesson_1.categories << live
    pregnancy_lesson_1.user = michelle
    pregnancy_lesson_1.lesson_type = :body
    pregnancy_lesson_1.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/pregnancy-monday-live.jpg"),
      filename: "pregnancy-monday-live.jpg",
      content_type: "image/jpeg"
    )
    pregnancy_lesson_1.description = "Pregnancy – LIVE – Monday at 7:30am – IGTV"
    pregnancy_lesson_1.igtv_url = "https://www.instagram.com/wearemotherfit/"
    pregnancy_lesson_1.start_time = date + 7.hours + 30.minutes
    pregnancy_lesson_1.live = true
    pregnancy_lesson_1.save!
  elsif date.wednesday?
    # LIVE Pregnancy – Lesson 2 (every Wednesday at 7:45am)
    pregnancy_lesson_2 = live.lessons.new(title: "Wednesday – 7:45 – Zoom – 20 mins")
    pregnancy_lesson_2.categories << live
    pregnancy_lesson_2.user = michelle
    pregnancy_lesson_2.lesson_type = :body
    pregnancy_lesson_2.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/pregnancy-wednesday-live.jpg"),
      filename: "pregnancy-wednesday-live.jpg",
      content_type: "image/jpeg"
    )
    pregnancy_lesson_2.description = "Pregnancy – LIVE – Wednesday at 7:45am – Zoom"
    pregnancy_lesson_2.zoom_url = "https://us02web.zoom.us/j/82839536224"
    pregnancy_lesson_2.start_time = date + 7.hours + 45.minutes
    pregnancy_lesson_2.live = true
    pregnancy_lesson_2.save!
  end
end
