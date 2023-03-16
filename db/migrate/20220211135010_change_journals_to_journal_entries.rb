class ChangeJournalsToJournalEntries < ActiveRecord::Migration[6.1]
  def change
    rename_table :journals, :journal_entries
  end
end
