class UpdateDbIntegerity < ActiveRecord::Migration[6.1]
  def change
    change_column :activities, :description, :text, null: false
    change_column :activities, :time_spent, :integer, null: false
    change_column :activities, :activity_type, :string, null: false
    change_column :activities, :calories_burned, :integer, null: false

    change_column :categories, :description, :text, null: false
    change_column :categories, :category_type, :string, null: false

    change_column :comments, :user_id, :bigint, null: false
    change_column :comments, :commentable_id, :integer, null: false
    change_column :comments, :commentable_type, :string, null: false
    change_column :comments, :content, :string, null: false

    change_column :journal_entries, :title, :string, null: false
    change_column :journal_entries, :description, :string, null: false
    change_column :journal_entries, :user_id, :bigint, null: false
    change_column :journal_entries, :date_recorded, :datetime, null: false, precision: 6

    change_column :lessons, :excerpt, :string, null: false
    change_column :lessons, :description, :text, null: false
    change_column :lessons, :duration, :integer, null: false
    change_column :lessons, :calories_burned, :string, null: false
    change_column :lessons, :vimeo_url, :string, null: false
    change_column :lessons, :start_time, :datetime, precision: 6
    change_column :lessons, :live, :boolean, default: false
    change_column :lessons, :difficulty, :string, null: false
    change_column :lessons, :lesson_type, :string, null: false

    change_column :likes, :likeable_type, :string, null: false

    change_column :recipes, :prep_time, :integer, null: false
    change_column :recipes, :cook_time, :integer, null: false
    change_column :recipes, :difficulty, :string, null: false

    change_column :user_weights, :user_id, :bigint, null: false
    change_column :user_weights, :weight, :integer, null: false
    change_column :user_weights, :date_recorded, :datetime, null: false, precision: 6

    change_column :users, :name, :string, null: false
    change_column :users, :motherhood_stage, :string, null: false
  end
end
