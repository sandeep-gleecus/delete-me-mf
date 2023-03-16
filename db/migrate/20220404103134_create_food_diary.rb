class CreateFoodDiary < ActiveRecord::Migration[6.1]
  def change
    create_table :food_diaries do |t|
      t.string :title, null: false
      t.float :calories_consumed, null: false
      t.references :user
      t.timestamps
    end
  end
end
