class StripeRewriteData < ActiveRecord::Migration[6.1]
  def change
    drop_table :subscriptions
    remove_column :users, :subscription
    add_column :users, :subscription, :jsonb
  end
end
