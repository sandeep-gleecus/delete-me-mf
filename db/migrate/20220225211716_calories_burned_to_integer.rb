class CaloriesBurnedToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :lessons, :calories_burned, 'integer USING CAST(calories_burned AS integer)'
  end
end
