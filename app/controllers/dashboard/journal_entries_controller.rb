class Dashboard::JournalEntriesController < DashboardController
  def index
    @journal_entries = current_user.journal_entries.order(date: :desc, time: :desc)
  end

  def show
    @journal_entry = JournalEntry.find(params[:id])
  end

  def new
    @journal_entry = current_user.journal_entries.build
  end

  def create
    @journal_entry = current_user.journal_entries.build(journal_entry_params)
    @journal_entry.save
    redirect_to dashboard_journal_entry_path(@journal_entry)
  end

  def edit
    @journal_entry = JournalEntry.find(params[:id])
  end

  def update
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.update(journal_entry_params)
    if @journal_entry.update(journal_entry_params)
      redirect_to dashboard_journal_entry_path(@journal_entry)
    end
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.destroy
    if @journal_entry.destroy
      redirect_to dashboard_journal_entries_path
    end
  end

  private

  def journal_entry_params
    params.require(:journal_entry).permit(:title, :description, :featured_image, :date, :time, :user_id)
  end
end
