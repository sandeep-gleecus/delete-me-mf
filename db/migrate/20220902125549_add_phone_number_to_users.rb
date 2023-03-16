class AddPhoneNumberToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :phone_number, :string, if_not_exists: true
  end
end
