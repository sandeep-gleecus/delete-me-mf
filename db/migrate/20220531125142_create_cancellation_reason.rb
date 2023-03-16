class CreateCancellationReason < ActiveRecord::Migration[6.1]
  def change
    create_table :cancelation_reasons do |t|
      t.string :reason
      t.references :user
      t.timestamps
    end
  end
end
