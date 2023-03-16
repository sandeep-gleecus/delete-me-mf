class Dashboard::Lessons::LikesController < Dashboard::LikesController
  before_action :set_likeable

  private

  def set_likeable
    @likeable = Lesson.find(params[:lesson_id])
  end
end
