class DropSecondaryFromLessons < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :secondary
  end
end
