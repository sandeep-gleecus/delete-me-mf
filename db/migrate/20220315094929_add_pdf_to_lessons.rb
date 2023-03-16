class AddPdfToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :resources, :string
  end
end
