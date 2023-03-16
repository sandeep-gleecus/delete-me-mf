class Dashboard::CategoriesController < DashboardController
  def index
    @categories = Category.where(ancestry: nil).order(:id)
  end

  def show
    @category = Category.find(params[:id])
  end
end
