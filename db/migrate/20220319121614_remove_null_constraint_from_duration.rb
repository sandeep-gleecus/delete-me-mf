class RemoveNullConstraintFromDuration < ActiveRecord::Migration[6.1]
  def change
    change_column_null :lessons, :duration, true
  end
end
