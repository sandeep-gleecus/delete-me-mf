class AddDateRecordedToActivityAndJournal < ActiveRecord::Migration[6.1]
  def change
    add_column :activities, :date_recorded, :datetime
    add_column :journal_entries, :date_recorded, :datetime
  end
end
