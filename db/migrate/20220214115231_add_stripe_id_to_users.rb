class AddStripeIdToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :price_id
    drop_table :prices
    add_column :users, :stripe_id, :string
  end
end
