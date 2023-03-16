class AddIntercomIdToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :intercom_id, :string
  end
end
