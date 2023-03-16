class Dashboard::FoodEntriesController < DashboardController
  def index
    @food_entries = current_user.food_entries.all.order(date: :desc)
    @calories_burned_today = current_user.food_entries.today.sum(:calories_consumed)
  end

  def show
    @food_entry = FoodEntry.find(params[:id])
  end

  def new
    @food_entry = FoodEntry.new
  end

  def create
    @food_entry = current_user.food_entries.build(food_entry_params)
    @food_entry.save
    redirect_to dashboard_food_entry_path(@food_entry)
  end

  def edit
    @food_entry = FoodEntry.find(params[:id])
  end

  def update
    @food_entry = FoodEntry.find(params[:id])
    @food_entry.update(food_entry_params)
    if @food_entry.update(food_entry_params)
      redirect_to dashboard_food_entry_path(@food_entry)
    end
  end

  def destroy
    @food_entry = FoodEntry.find(params[:id])
    @food_entry.destroy
    if @food_entry.destroy
      redirect_to dashboard_food_entries_path
    end
  end

  private

  def food_entry_params
    params.require(:food_entry).permit(:title, :calories_consumed, :date, :time, :user_id)
  end
end