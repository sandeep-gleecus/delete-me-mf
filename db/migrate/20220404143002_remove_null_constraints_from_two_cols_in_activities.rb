class RemoveNullConstraintsFromTwoColsInActivities < ActiveRecord::Migration[6.1]
  def change
    change_column_null :activities, :description, true
    change_column_null :activities, :calories_burned, true
  end
end
