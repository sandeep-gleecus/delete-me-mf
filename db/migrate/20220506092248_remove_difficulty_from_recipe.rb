class RemoveDifficultyFromRecipe < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :difficulty
  end
end
