class RemoveBodyAndExcerptFromRecipes < ActiveRecord::Migration[6.1]
  def change
    remove_column :recipes, :body
    remove_column :recipes, :excerpt
  end
end
