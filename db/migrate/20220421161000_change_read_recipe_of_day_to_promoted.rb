class ChangeReadRecipeOfDayToPromoted < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :read_of_the_day, :promoted
    rename_column :recipes, :recipe_of_the_day, :promoted
  end
end
