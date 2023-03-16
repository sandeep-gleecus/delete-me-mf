class AddStripePriceIdToSubscriptions < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :stripe_price_id, :string
  end
end
