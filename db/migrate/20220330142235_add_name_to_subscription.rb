class AddNameToSubscription < ActiveRecord::Migration[6.1]
  def change
    add_column :subscriptions, :name, :string
  end
end
