class Dashboard::CommentsController < DashboardController
  def create
    @comment = @commentable.comments.build(comment_params.merge(user: current_user))
    @comment.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
