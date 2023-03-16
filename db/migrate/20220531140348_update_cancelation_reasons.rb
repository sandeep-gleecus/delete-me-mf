class UpdateCancelationReasons < ActiveRecord::Migration[6.1]
  def change
    rename_table :cancelation_reasons, :cancelations
    add_column :cancelations, :detail, :string
  end
end
