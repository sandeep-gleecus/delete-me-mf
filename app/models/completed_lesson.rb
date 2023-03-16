class CompletedLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson

  validates :user, uniqueness: { scope: :lesson_id }

  scope :this_week, -> { where(created_at: DateTime.current.beginning_of_week..DateTime.current.end_of_week) }

  after_create do
    create_related_activity
  end

  after_destroy do
    destroy_related_activity
  end

  rails_admin do
    list do
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
      field :lesson do
        queryable true
        searchable :title
      end
    end

    show do
      fields :id, :user, :lesson, :created_at, :updated_at
    end

    create do
      fields :user, :lesson
    end

    edit do
      fields :user, :lesson
    end
  end

  private

  def create_related_activity
    lesson_type = lesson.lesson_type.to_sym
    return if lesson_type == :soul
    activity = user.activities.new(title: "Completed: #{lesson.title}")
    lesson_title = lesson.title.downcase
    if lesson_type == :mind
      if lesson_title.include? "breathwork"
        type = :breathwork
      elsif lesson_title.include? "meditation"
        type = :meditate
      elsif lesson_title.include? "yoga"
        type = :yoga
      else
        type = :workout
      end
    elsif lesson_type == :body
      if lesson_title.include? "walk"
        type = :walk
      else
        type = :workout
      end
    end
    activity.activity_type = type
    activity.description = "Completed: #{lesson.description}"
    activity.time_spent = (lesson.duration? ? lesson.duration_seconds / 60 : 0)
    activity.calories_burned = (lesson.calories_burned? ? lesson.calories_burned : 0)
    activity.date = created_at
    activity.time = created_at
    activity.save!
  end

  def destroy_related_activity
    user.activities.where(title: "Completed: #{lesson.title}", description: "Completed: #{lesson.description}").destroy_all
  end
end
