class DropWeightColumnAndDateRecorded < ActiveRecord::Migration[6.1]
  def change
    remove_column :weight_entries, :date_recorded
    remove_column :users, :weight
  end
end
