class CreatePopularSearches < ActiveRecord::Migration[6.1]
  def change
    create_table :popular_searches do |t|
      t.string :name, null: false
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
