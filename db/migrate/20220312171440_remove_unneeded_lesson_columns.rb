class RemoveUnneededLessonColumns < ActiveRecord::Migration[6.1]
  def change
    remove_column :lessons, :excerpt
    remove_column :lessons, :difficulty
  end
end
