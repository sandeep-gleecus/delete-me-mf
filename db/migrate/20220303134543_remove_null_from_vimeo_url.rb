class RemoveNullFromVimeoUrl < ActiveRecord::Migration[6.1]
  def change
    change_column_null :lessons, :vimeo_url, true
    add_column :lessons, :zoom_url, :string
  end
end
