class ChangeFoodDiariesTable < ActiveRecord::Migration[6.1]
  def change
    change_column :food_diaries, :calories_consumed, :integer
    rename_table :food_diaries, :food_entries
  end
end
