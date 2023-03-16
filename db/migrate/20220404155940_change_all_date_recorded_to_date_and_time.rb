class ChangeAllDateRecordedToDateAndTime < ActiveRecord::Migration[6.1]
  def change
    remove_column :activities, :date_recorded
    add_column :activities, :date, :date, null: false
    add_column :activities, :time, :time, null: false
    remove_column :journal_entries, :date_recorded
    add_column :journal_entries, :date, :date, null: false
    add_column :journal_entries, :time, :time, null: false
  end
end
