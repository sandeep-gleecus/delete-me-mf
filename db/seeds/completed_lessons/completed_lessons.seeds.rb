# Users
abbie = User.find_by(email: "abbie@motherfit.co.uk")
claire = User.find_by(email: "claire@motherfit.co.uk")
erica = User.find_by(email: "erica@motherfit.co.uk")
robin = User.find_by(email: "robin@motherfit.co.uk")

# Create 50 completed lessons and randomly assign to users
Lesson.where(start_time: nil).sample(50).each do |lesson|
  user = [abbie, claire, erica, robin].sample
  CompletedLesson.create(lesson: lesson, user: user)
end
