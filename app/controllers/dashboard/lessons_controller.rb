class Dashboard::LessonsController < DashboardController
  def index
    @lessons = Lesson.all.page(params[:page])
  end

  def show
    @lesson = Lesson.find(params[:id])
    return if params[:category_id].blank?

    @category_id = params[:category_id]
    @next = @lesson.next(@lesson.id, @category_id)
    @previous = @lesson.previous(@lesson.id, @category_id)
  end
end
