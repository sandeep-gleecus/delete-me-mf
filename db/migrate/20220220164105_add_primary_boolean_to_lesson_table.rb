class AddPrimaryBooleanToLessonTable < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :secondary, :boolean, default: false, null: false
  end
end
