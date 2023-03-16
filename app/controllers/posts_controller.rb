class PostsController < MainController
  def index
    @recent_posts = Post.recent_posts.limit(3)
  end

  def show
    @post = Post.friendly.find(params[:id])
  end
end
