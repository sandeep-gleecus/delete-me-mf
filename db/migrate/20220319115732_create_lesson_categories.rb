class CreateLessonCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :lesson_categories do |t|
      t.references :lesson, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
