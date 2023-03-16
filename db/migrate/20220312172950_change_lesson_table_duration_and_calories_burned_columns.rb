class ChangeLessonTableDurationAndCaloriesBurnedColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :lessons, :duration, :float
    change_column_null :lessons, :calories_burned, true
  end
end
