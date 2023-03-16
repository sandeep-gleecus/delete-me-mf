# Pinned recipes displays in order first for Dashboard pages
class AddPinnedFlagToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :pinned, :boolean, default: false, null: false
  end
end
