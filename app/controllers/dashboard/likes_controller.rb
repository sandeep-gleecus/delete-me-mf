class Dashboard::LikesController < DashboardController
  def create
    @like = @likeable.likes.build(user: current_user)
    @like.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end
end
