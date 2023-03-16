class ChangeUserWeightsToWeightEntries < ActiveRecord::Migration[6.1]
  def change
    rename_table :user_weights, :weight_entries
  end
end
