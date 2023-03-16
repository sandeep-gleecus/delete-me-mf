class Activity < ApplicationRecord
  belongs_to :user
  has_one_attached :featured_image, dependent: :destroy

  validates_presence_of :title, message: "Title can’t be empty"
  validates_presence_of :activity_type, message: "Please choose the type of activity you did"
  validates_presence_of :date, message: "Date can’t be empty"
  validates_presence_of :time, message: "Time can’t be empty"
  validates :featured_image, content_type: [:png, :jpg, :jpeg, :webp]

  TYPES = [:breathwork, :cycle, :meditate, :run, :swim, :walk, :workout, :yoga]

  scope :this_week, -> { where(date: DateTime.current.beginning_of_week..DateTime.current.end_of_week) }
  scope :today, -> { where(date: Date.current) }
  scope :mind, -> { where(activity_type: [:breathwork, :meditation, :yoga]) }

  rails_admin do
    list do
      fields :title, :activity_type do
        searchable true
      end
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
    end

    show do
      fields :id, :title, :description, :activity_type, :calories_burned, :time_spent, :date, :time
      field :featured_image, :active_storage
      fields :user, :created_at, :updated_at
    end

    create do
      fields :title, :description
      field :activity_type, :enum do
        enum do
          Activity::TYPES
        end
      end
      fields :calories_burned, :time_spent, :date, :time
      field :featured_image, :active_storage
      field :user
    end

    edit do
      fields :title, :description
      field :activity_type, :enum do
        enum do
          Activity::TYPES
        end
      end
      fields :calories_burned, :time_spent, :date, :time
      field :featured_image, :active_storage
      field :user
    end
  end
end
