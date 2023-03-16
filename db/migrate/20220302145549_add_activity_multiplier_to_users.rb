class AddActivityMultiplierToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :activity_multiplier, :string
  end
end
