class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user
      t.integer :commentable_id
      t.string :commentable_type
      t.string :content
      t.timestamps
    end
  end
end
