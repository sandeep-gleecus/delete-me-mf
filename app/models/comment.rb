class Comment < ApplicationRecord
  require "obscenity/active_model"

  belongs_to :user
  belongs_to :commentable, polymorphic: true
  has_many :likes, as: :likeable, dependent: :destroy

  validates_presence_of :content
  validates_presence_of :commentable
  validates_length_of :content, minimum: 3, maximum: 255
  validates :content, obscenity: { sanitize: true, replacement: "[censored]" }

  rails_admin do
    object_label_method :comment_to_string
    list do
      field :content do
        searchable true
      end
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
      field :commentable
    end

    show do
      fields :id, :content, :commentable, :user, :created_at, :updated_at
    end

    create do
      fields :content, :commentable, :user
    end

    edit do
      fields :content, :commentable, :user
    end
  end

  def comment_to_string
    if commentable.present?
      "#{user.name}"
    end
  end
end
