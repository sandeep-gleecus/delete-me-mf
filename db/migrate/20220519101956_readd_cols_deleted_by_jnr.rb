class ReaddColsDeletedByJnr < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :excerpt, :string, null: false, default: " "
    add_column :recipes, :excerpt, :string, null: false, default: " "
  end
end
