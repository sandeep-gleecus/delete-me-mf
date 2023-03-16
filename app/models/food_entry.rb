class FoodEntry < ApplicationRecord
  belongs_to :user

  validates_presence_of :title
  validates_presence_of :calories_consumed
  validates_presence_of :date
  validates_presence_of :time

  scope :today, -> { where(date: Date.current) }

  rails_admin do
    list do
      fields :title, :calories_consumed do
        searchable true
      end
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
    end

    show do
      fields :id, :title, :calories_consumed, :date, :time, :user, :created_at, :updated_at
    end

    create do
      fields :title, :calories_consumed, :date, :time, :user
    end

    edit do
      fields :title, :calories_consumed, :date, :time, :user
    end
  end
end
