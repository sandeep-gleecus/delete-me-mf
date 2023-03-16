# Helper for all popular search related ..
module DashboardSearchHelper
  def popular_search_url(filter_by = 'Classes')
    search_dashboard_path(query: params[:query], filter_by: filter_by)
  end
end
