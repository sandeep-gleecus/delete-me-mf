class Like < ApplicationRecord
  belongs_to :user
  belongs_to :likeable, polymorphic: true

  validates :user_id, uniqueness: { scope: [:likeable_id, :likeable_type] }
  validates_presence_of :likeable

  rails_admin do
    object_label_method :like_to_string
    list do
      field :likeable do
        searchable true
      end
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
    end

    show do
      fields :id, :user, :likeable, :created_at, :updated_at
    end

    create do
      fields :user, :likeable
    end

    edit do
      fields :user, :likeable
    end
  end

  def like_to_string
    if likeable.present?
      "#{user.name}"
    end
  end
end
