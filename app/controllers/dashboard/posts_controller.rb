class Dashboard::PostsController < DashboardController
  def index
    @recent_posts = Post.recent_posts
  end

  def show
    @post = Post.friendly.find(params[:id])
  end
end
