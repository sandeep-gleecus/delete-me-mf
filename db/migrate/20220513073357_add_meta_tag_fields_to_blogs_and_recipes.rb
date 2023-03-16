class AddMetaTagFieldsToBlogsAndRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :meta_title, :string
    add_column :posts, :meta_description, :string

    add_column :recipes, :meta_title, :string
    add_column :recipes, :meta_description, :string
  end
end
