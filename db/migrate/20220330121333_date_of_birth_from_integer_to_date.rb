class DateOfBirthFromIntegerToDate < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :date_of_birth
    add_column :users, :date_of_birth, :date
  end
end
