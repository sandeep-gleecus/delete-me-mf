class CreatePricesAndAddSubscriptionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :subscription, :string
    create_table :prices do |t|
      t.string :name
      t.string :stripe_price_id
      t.timestamps
    end
  end
end
