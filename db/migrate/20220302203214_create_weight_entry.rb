class CreateWeightEntry < ActiveRecord::Migration[6.1]
  def change
    create_table :user_weights do |t|
      t.references :user
      t.integer :weight
      t.datetime :date_recorded
      t.timestamps
    end
  end
end
