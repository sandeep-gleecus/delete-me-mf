class AddIgtvToLessons < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :igtv_url, :string
  end
end
