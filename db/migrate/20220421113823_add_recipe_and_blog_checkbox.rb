class AddRecipeAndBlogCheckbox < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :read_of_the_day, :boolean, default: false
    add_column :recipes, :recipe_of_the_day, :boolean, default: false
  end
end
