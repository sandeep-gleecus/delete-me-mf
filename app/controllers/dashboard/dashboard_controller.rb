class Dashboard::DashboardController < DashboardController
  before_action :fetch_popular_searches, only: %i[index mind body soul]
  def index
    if current_user.pregnancy?
      @primary = Lesson.primary(current_user).incompleted
      @secondary = Lesson.secondary(current_user).incompleted
      if current_user.pregnancy_trimester_1? || current_user.pregnancy_trimester_2?
        @primary = @primary.limit(5)
        @secondary = @secondary.limit(6)
      else # pregnancy_trimester_3
        @primary = @primary.limit(8)
        @secondary = @secondary.limit(3)
      end
    elsif current_user.postpartum?
      # To display categories inline with postpartum designs
      @primary, @categories_stages_hash = Category.primary(current_user)
      # primary_lessons = Lesson.primary(current_user).incompleted.limit(3)
      # @secondary = primary_lessons + Lesson.secondary(current_user).incompleted.limit(6)
      @secondary = Lesson.secondary(current_user).incompleted.limit(6)
      @intro_video = Lesson.find_by(title: 'Postpartum Intro')
      @intro_video_completed = @intro_video ? @intro_video.completed?(current_user) : false
    elsif current_user.beyond?
      primary = Category.primary(current_user)
      @primary = Category.beyond_categories_custom_order(primary, 3)
      @secondary = Category.secondary(current_user).limit(6)
    end
    @recent_journal_entries = current_user.journal_entries.order(date: :desc).limit(3)
    @calendar_lessons = Lesson.live(current_user)
    @activities = current_user.activities.order(created_at: :desc).limit(3)
    if current_user.beyond?
      @calories_burned_today = current_user.food_entries.today.sum(:calories_consumed)
      @activity_time_today = current_user.activities.today.sum(:time_spent)
      weight_entries = current_user.weight_entries.order(created_at: :desc)
      if weight_entries.any?
        @recent_weight_entry = weight_entries.last.weight
        @weight_entry_change = @recent_weight_entry - weight_entries.first.weight
      end
    end
  end

  def mind
    @expert_categories = Category.mind_experts(current_user)
    @primary_lessons = Lesson.mind(current_user)
    @read_of_the_day = Category.find_by(title: current_user.motherhood_stage.titleize).posts.of_the_day
    @activities = current_user.activities.mind.order(created_at: :desc).limit(5)
  end

  def body
    if current_user.pregnancy?
      @primary = Category.primary(current_user).where(lesson_type: :body)
    elsif current_user.postpartum?
      @primary, @categories_stages_hash = Category.primary(current_user)
    elsif current_user.beyond?
      primary = Category.primary(current_user).where(category_type: :body)
      # Add 'Fit Challenge' category first to primary list
      @primary = Category.beyond_categories_custom_order(primary)
      @secondary = Category.secondary(current_user).where(category_type: :body)
    end
    @recipe_of_the_day = Recipe.all.of_the_day
    @activities = current_user.activities.where(activity_type: [:workout, :swimming, :core]).order(created_at: :desc).limit(3)
    @food_entries = current_user.food_entries.order(date: :desc).limit(3)
  end

  def soul
    @recent_journal_entries = current_user.journal_entries.order(date: :desc).limit(5)
    @read_of_the_day = Category.find_by(title: current_user.motherhood_stage.titleize).posts.of_the_day
    # resource = Category.find_by(title: current_user.motherhood_stage.titleize).children.find_by(title: "Resources")
    # @resources = resource.lessons.limit(3) if resource
    resource = Category.find_by(title: current_user.motherhood_stage.titleize).posts
    @resources = resource.order(created_at: :desc).limit(3) if resource
    # Display resource excerpt or not (default => shows, remove below var to display excerpt)
    @discard_resource_excerpt = true
  end

  def live
    lessons = Lesson.live(current_user)
    if lessons
      @next_live = lessons.upcoming.first
      @upcoming_live = lessons.upcoming.where.not(id: @next_live.id).limit(3) if @next_live
      @previous_live = lessons.past.limit(3)
    end
    @calendar_lessons = Lesson.live(current_user)
  end

  def community
    users = User.where(admin: false)
    @most_completed_lessons = users.joins(:completed_lessons).select("users.name, users.id, users.motherhood_stage, count(*) AS total_completed").group("users.name, users.id").order("total_completed desc").limit(5)
    @most_calories_burned = users.joins(:activities).select("users.name, users.id, users.motherhood_stage, sum(activities.calories_burned) AS total_calories").group("users.name, users.id").order("total_calories desc").limit(5)
    @most_time_spent = users.joins(:activities).select("users.name, users.id, users.motherhood_stage, sum(activities.time_spent) AS total_time").group("users.name, users.id").order("total_time desc").limit(5)
  end

  def calendar
    @lessons = Lesson.live(current_user)
    return unless @lessons

    @today_lessons = @lessons.where(start_time: Date.current)
    @lessons_by_day = @lessons.group_by{ |l| l.start_time }
  end

  private

  def fetch_popular_searches
    @popular_searches = PopularSearch.limit(5)
  end
end
