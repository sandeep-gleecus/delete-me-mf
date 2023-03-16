class ChangeWeightEntryWeightFromIntegerToFloat < ActiveRecord::Migration[6.1]
  def change
    change_column :weight_entries, :weight, :float
  end
end
