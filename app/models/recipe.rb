class Recipe < ApplicationRecord
  include PromotedScopes
  extend FriendlyId
  friendly_id :title, use: :slugged
  has_rich_text :body

  belongs_to :user
  belongs_to :category
  has_many :comments, as: :commentable, dependent: :destroy
  has_many :likes, as: :likeable, dependent: :destroy
  has_one_attached :featured_image, dependent: :destroy

  accepts_nested_attributes_for :comments

  validates_presence_of :title
  validates_presence_of :excerpt
  validates_presence_of :body
  validates_presence_of :prep_time
  validates_presence_of :cook_time
  validates :featured_image, content_type: [:png, :jpg, :jpeg, :webp]
  validates_presence_of :featured_image
  validates_format_of :slug, with: /\A[a-zA-Z0-9-]*\z/
  validates_uniqueness_of :slug

  rails_admin do
    list do
      exclude_fields :body, :featured_image
    end
  end

  # rails_admin do
  #   list do
  #     fields :title, :promoted do
  #       searchable true
  #     end
  #     field :category do
  #       queryable true
  #       searchable :title
  #     end
  #     field :user do
  #       queryable true
  #       searchable [:name, :email, :stripe_id, :intercom_id]
  #     end
  #   end

  #   show do
  #     fields :id, :title, :excerpt, :promoted, :prep_time, :cook_time, :category
  #     field :featured_image, :active_storage
  #     fields :comments, :likes, :user, :created_at, :updated_at
  #   end

  #   create do
  #     field :title
  #     field :excerpt
  #     field :body
  #     fields :promoted, :prep_time, :cook_time, :category
  #     field :featured_image, :active_storage
  #     fields :comments, :likes, :user
  #   end

  #   edit do
  #     field :title
  #     field :excerpt
  #     field :body
  #     fields :promoted, :prep_time, :cook_time, :category
  #     field :featured_image, :active_storage
  #     fields :comments, :likes, :user
  #   end
  # end

  def get_meta_title
    meta_title || title
  end

  def get_meta_description
    meta_description || excerpt || nil
  end
end
