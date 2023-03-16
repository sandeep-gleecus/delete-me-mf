class DropCategoryTypeNullFalse < ActiveRecord::Migration[6.1]
  def change
    change_column_null :categories, :category_type, true
  end
end
