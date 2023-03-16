class AddFreeSubscriptionToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :free_subscription, :boolean, default: false, null: false
  end
end
