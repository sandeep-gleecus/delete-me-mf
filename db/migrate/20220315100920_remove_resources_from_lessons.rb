class RemoveResourcesFromLessons < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :resources
  end
end
