class AddLinkToLesson < ActiveRecord::Migration[6.1]
  def change
    add_column :lessons, :href, :string
  end
end
