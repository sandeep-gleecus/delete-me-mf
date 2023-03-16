class Dashboard::RecipesController < DashboardController
  def index
    @recipes = Recipe.all.order(created_at: :desc)
    # show pinned recipes first and rest are in created_at descending order
    # Also recipes pinned with true come first in order order of created_at DESC
    @recipes = @recipes.sort_by { |r| r.pinned ? 0 : 1 } if @recipes.present?
  end

  def show
    @recipe = Recipe.friendly.find(params[:id])
  end
end
