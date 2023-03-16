class RemovingFitnessLevelFromUsersTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :fitness_level
  end
end
