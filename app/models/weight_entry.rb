class WeightEntry < ApplicationRecord
  belongs_to :user

  validates_presence_of :weight

  rails_admin do
    object_label_method :weight_entry_to_string

    list do
      field :weight do
        searchable true
      end
      field :user do
        queryable true
        searchable [:name, :email, :stripe_id, :intercom_id]
      end
    end

    show do
      fields :id, :weight, :user, :created_at, :updated_at
    end

    create do
      fields :weight, :user
    end

    edit do
      fields :weight, :user
    end
  end

  def weight_entry_to_string
    if weight.present?
      "#{weight}"
    end
  end
end
