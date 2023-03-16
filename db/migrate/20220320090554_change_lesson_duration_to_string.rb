class ChangeLessonDurationToString < ActiveRecord::Migration[6.1]
  def change
    change_column :lessons, :duration, :string
  end
end
