class RemoveNullOnUsers < ActiveRecord::Migration[6.1]
  def change
    change_column_null :users, :motherhood_stage, :true
    change_column_null :users, :name, :true
  end
end
