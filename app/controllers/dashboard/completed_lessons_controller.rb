class Dashboard::CompletedLessonsController < DashboardController
  def create
    @completed = current_user.completed_lessons.build(completed_lesson_params)
    @completed.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @completed = current_user.completed_lessons.find(params[:id])
    @completed.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def completed_lesson_params
    params.require(:completed_lesson).permit(:lesson_id)
  end
end
