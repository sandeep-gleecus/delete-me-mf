class LessonCategory < ApplicationRecord
  belongs_to :category
  belongs_to :lesson

  rails_admin do
    object_label_method :lesson_category_to_string
    list do
      field :lesson do
        queryable true
        searchable :title
      end
      field :category do
        queryable true
        searchable :title
      end
    end

    show do
      fields :id, :lesson, :category, :created_at, :updated_at
    end

    create do
      fields :lesson, :category
    end

    edit do
      fields :lesson, :category
    end
  end

  def lesson_category_to_string
    if lesson.present? && category.present?
      "#{lesson.title} - #{category.title}"
    end
  end
end
