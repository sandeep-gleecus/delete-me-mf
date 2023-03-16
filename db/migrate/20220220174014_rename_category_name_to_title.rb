class RenameCategoryNameToTitle < ActiveRecord::Migration[6.1]
  def change
    rename_column :categories, :name, :title
  end
end
