class Dashboard::Recipes::LikesController < Dashboard::LikesController
  before_action :set_likeable

  private

  def set_likeable
    @likeable = Recipe.find(params[:recipe_id])
  end
end
