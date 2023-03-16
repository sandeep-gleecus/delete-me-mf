class ChangeFitnessGoalToString < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :fitness_goal, :string
  end
end
