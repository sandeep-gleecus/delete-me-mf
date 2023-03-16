# Relationships
postpartum = Category.find_by(title: "Postpartum")
michelle = User.find_by(email: "michelle@motherfit.co.uk")

# LIVE
live = postpartum.children.find_or_initialize_by(title: "LIVE")
live.featured_image.attach(
  io: File.open("app/assets/images/awaiting-image.jpg"),
  filename: "awaiting-image.jpg",
  content_type: "image/jpeg"
)
live.description = "Postpartum LIVE"
live.save!

start_date = DateTime.current.beginning_of_month

# create and repeat new Lessons
(start_date..(start_date + 1.month).end_of_month).to_a.each do |date|
  if date.tuesday?
    # LIVE Postpartum – Lesson 1 (every Tuesday at 7:30am)
    postpartum_lesson_1 = live.lessons.new(title: "Tuesday – 7:30 – IGTV – 20 mins")
    postpartum_lesson_1.categories << live
    postpartum_lesson_1.user = michelle
    postpartum_lesson_1.lesson_type = :body
    postpartum_lesson_1.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/postpartum-tuesday-live.jpg"),
      filename: "postpartum-tuesday-live.jpg",
      content_type: "image/jpeg"
    )
    postpartum_lesson_1.description = "Postpartum – LIVE – Tuesday at 7:30am – IGTV"
    postpartum_lesson_1.igtv_url = "https://www.instagram.com/wearemotherfit/"
    postpartum_lesson_1.start_time = date + 7.hours + 30.minutes
    postpartum_lesson_1.live = true
    postpartum_lesson_1.save!
  elsif date.thursday?
    # LIVE Postpartum – Lesson 2 (every Thursday at 7:30am)
    postpartum_lesson_2 = live.lessons.new(title: "Thursday – 7:30 – Zoom – 20 mins")
    postpartum_lesson_2.categories << live
    postpartum_lesson_2.user = michelle
    postpartum_lesson_2.lesson_type = :body
    postpartum_lesson_2.featured_image.attach(
      io: File.open("app/assets/images/seeds/shared/postpartum-thursday-live.jpg"),
      filename: "postpartum-thursday-live.jpg",
      content_type: "image/jpeg"
    )
    postpartum_lesson_2.description = "Postpartum – LIVE – Thursday at 7:30am – Zoom"
    postpartum_lesson_2.zoom_url = "https://us02web.zoom.us/j/81469475749"
    postpartum_lesson_2.start_time = date + 7.hours + 30.minutes
    postpartum_lesson_2.live = true
    postpartum_lesson_2.save!
  end
end
