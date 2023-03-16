# Change datatype detail to text from string for cancellations
class ChangeDataTypeOfDetailToTextForCancellations < ActiveRecord::Migration[6.1]
  def change
    change_column :cancellations, :detail, :text
  end
end
