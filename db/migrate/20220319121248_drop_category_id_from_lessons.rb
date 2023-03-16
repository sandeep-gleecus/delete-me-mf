class DropCategoryIdFromLessons < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :category_id
  end
end
