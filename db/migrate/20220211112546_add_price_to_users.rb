class AddPriceToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :price
  end
end
