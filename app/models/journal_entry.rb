class JournalEntry < ApplicationRecord
  belongs_to :user
  has_one_attached :featured_image, dependent: :destroy

  validates_presence_of :title, message: "Title can't be empty"
  validates_presence_of :description, message: "Description can't be empty"
  validates_presence_of :date, message: "Date can’t be empty"
  validates_presence_of :time, message: "Time can’t be empty"
  validates :featured_image, content_type: [:png, :jpg, :jpeg, :webp]

  rails_admin do
    list do
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
      fields :date, :time
    end

    show do
      fields :id, :date, :time, :user, :created_at, :updated_at
    end

    create do
      fields :title, :description, :date, :time
      field :featured_image, :active_storage
      field :user
    end

    edit do
      fields :id, :date, :time
    end
  end

  def self.create_sign_up_entry(user)
    entry = user.journal_entries.build
    entry.title = "I started my Mother Fit journey!"
    entry.description = "Today I joined the Mother Fit community."
    entry.date = Date.current
    entry.time = Time.current
    entry.save!
  end
end
