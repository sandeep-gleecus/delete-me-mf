class UpdateCancelationsToCancellations < ActiveRecord::Migration[6.1]
  def change
    rename_table :cancelations, :cancellations
  end
end
