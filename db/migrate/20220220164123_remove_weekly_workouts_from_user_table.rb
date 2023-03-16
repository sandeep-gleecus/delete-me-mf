class RemoveWeeklyWorkoutsFromUserTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :weekly_workouts
  end
end
