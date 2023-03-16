class AddDatetimeToFoodEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :food_entries, :date, :date, null: false
    add_column :food_entries, :time, :time, null: false
  end
end
