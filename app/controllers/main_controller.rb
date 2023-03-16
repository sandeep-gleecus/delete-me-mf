class MainController < ApplicationController
  before_action :authenticate_user!, only: [:onboarding]
  before_action :redirect_to_subscription, only: [:onboarding], unless: -> { current_user.exempt_from_subscription? || current_user.has_active_subscription? }
  before_action :redirect_to_dashboard, only: [:onboarding], if: -> { current_user.onboarded? }

  def index
    @recent_posts = Post.recent_posts.limit(3)
  end

  def pregnancy
    @recent_posts = Post.includes(:category).where(category: {title: "Pregnancy"}).recent_posts.limit(3)
  end

  def postpartum
    @recent_posts = Post.includes(:category).where(category: {title: "Postpartum"}).recent_posts.limit(3)
  end

  def beyond
    @recent_posts = Post.includes(:category).where(category: {title: "Beyond"}).recent_posts.limit(3)
  end

  def onboarding
    if request.post? || request.patch?
      if current_user.update(user_params)
        UserMailer.with(user: current_user).welcome_email.deliver_now
        redirect_to dashboard_root_path
      else
        render "onboarding"
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone_number, :avatar, :motherhood_stage, :pregnancy_due_date, :birth_date, :most_recent_birth_date, :fitness_goal, :activity_multiplier, :height, :date_of_birth, :daily_calorie_goal, :free_subscription,
      weight_entries_attributes: [:weight]
    )
  end
end
