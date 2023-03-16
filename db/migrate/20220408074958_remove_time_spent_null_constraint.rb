class RemoveTimeSpentNullConstraint < ActiveRecord::Migration[6.1]
  def change
    change_column_null :activities, :time_spent, true
  end
end
