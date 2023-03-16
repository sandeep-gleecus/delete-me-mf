class AddDiffucultyToLesson < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :difficulty, :string
  end
end
