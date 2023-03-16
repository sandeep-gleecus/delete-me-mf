module Dashboard
  # Search in Dashboard Lessons, Posts, Recipes
  class SearchController < DashboardController
    def index
      query = params[:query]&.strip
      raise 'query not present' unless query

      query = params[:query]&.strip#&.downcase
      params[:query] = query
      params[:filter_by] ||= 'Classes'
      @search_results = case params[:filter_by]
                        when 'Classes'
                          search_dashboard(query, 'Lesson')
                        when 'Posts'
                          search_dashboard(query, 'Post')
                        when 'Recipes'
                          search_dashboard(query, 'Recipe')
                        else
                          search_dashboard(query, 'Lesson')
                        end
    end

    private

    def search_dashboard(query, class_type)
      motherhood = current_user.motherhood_stage.capitalize
      category_root_ids = Category.roots.where(title: motherhood)
      category_ids = category_root_ids + Category.find_by(title: motherhood).descendants
      query = query.downcase # case in-sensitive match
      @search_results = case class_type
                        when 'Lesson'
                          filtered_lessons = Lesson.includes(:categories).where(categories: { id: category_ids }).order(:id)
                          filtered_lessons.where('lower(lessons.title) like ? OR lower(lessons.description) like ?',
                                                 "%#{query}%", "%#{query}%")
                        when 'Post'
                          filtered_posts = Post.includes(:category).where(categories: { id: category_ids }).order(:id)
                          filtered_posts.where('lower(posts.title) like ? OR lower(posts.excerpt) like ?',
                                               "%#{query}%", "%#{query}%")
                        when 'Recipe'
                          filtered_recipes = Recipe.includes(:category).where(categories: { id: category_ids }).order(:id)
                          filtered_recipes.where('recipes.title like ? OR recipes.excerpt like ?',
                                                 "%#{query}%", "%#{query}%")
                        else
                          filtered_lessons = Lesson.includes(:categories).where(categories: { id: category_ids }).order(:id)
                          filtered_lessons.where('lessons.title like ? OR lessons.description like ?',
                                                 "%#{query}%", "%#{query}%")
                        end
      @search_results.page(params[:page]).per(10)
    end
  end
end
