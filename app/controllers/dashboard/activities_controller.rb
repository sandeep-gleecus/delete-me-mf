class Dashboard::ActivitiesController < DashboardController
  def index
    @activities = current_user.activities.all.order(date: :desc, time: :desc)
    @activity_time_today = current_user.activities.today.sum(:time_spent)
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = current_user.activities.build
  end

  def create
    @activity = current_user.activities.build(activity_params)
    @activity.save
    redirect_to dashboard_activity_path(@activity)
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])
    @activity.update(activity_params)
    if @activity.update(activity_params)
      redirect_to dashboard_activity_path(@activity)
    end
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    if @activity.destroy
      redirect_to dashboard_activities_path
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :activity_type, :time_spent, :calories_burned, :date, :time, :featured_image, :user_id)
  end
end
