class AddNullFalseToBooleans < ActiveRecord::Migration[6.1]
  def change
    change_column_null :lessons, :live, false
    change_column_null :posts, :promoted, false
    change_column_null :recipes, :promoted, false
    change_column_null :users, :admin, false
  end
end
