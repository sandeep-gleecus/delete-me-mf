class Dashboard::Lessons::CommentsController < Dashboard::CommentsController
  before_action :set_commentable

  private

  def set_commentable
    @commentable = Lesson.find(params[:lesson_id])
  end
end
