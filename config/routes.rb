Rails.application.routes.draw do
  root "main#index"

  # Primary
  get "pregnancy", to: "main#pregnancy"
  get "postpartum", to: "main#postpartum"
  get "beyond", to: "main#beyond"
  get "pricing", to: "main#pricing"
  get "payment", to: "main#payment"
  get "onboarding", to: "main#onboarding"
  patch "onboarding", to: "main#onboarding"

  # Secondary
  get "about", to: "main#about"
  get "faqs", to: "main#faqs"
  get "terms", to: "main#terms"
  get "privacy", to: "main#privacy"
  get "cookies", to: "main#cookies"
  # get "test-cancelation", to: "main#test-cancelation"

  # Blog
  resources :posts, path: "blog" do
    resources :categories
    resources :comments
    resources :likes
  end
  resources :comments do
    resources :comments
  end

  # Users
  devise_for :users,
    controllers: {
      registrations: "registrations"
    },
    path: "",
    path_names: {
      sign_in: "login",
      sign_out: "logout",
      password: "reset-password",
      sign_up: "join"
    }

  devise_scope :user do
    get "/dashboard/settings/personal", to: "registrations#personal", as: "dashboard_settings_personal"
  end

  # Subscriptions
  resources :subscriptions, only: [:new]
  get "subscriptions/create" # Stripe.js return_url
  patch "subscriptions/update", to: "subscriptions#update" # Stripe update URL
  get "subscriptions/cancellation", to: "subscriptions#cancellation"
  post "subscriptions/webhook", to: "subscriptions#webhook" # Stripe webhook URL

  # Dashboard
  namespace :dashboard do
    root "dashboard#index"

    # Primary
    get "mind", to: "dashboard#mind"
    get "body", to: "dashboard#body"
    get "soul", to: "dashboard#soul"
    get "live", to: "dashboard#live"
    get "community", to: "dashboard#community"
    get "support", to: "dashboard#support"
    get "calendar", to: "dashboard#calendar"

    # Settings
    get "settings/motherhood", to: "settings#motherhood"
    put 'settings/motherhood/update/:id', to: 'settings#update_motherhood', as: :update_motherhood_settings
    put 'settings/personal/update/:id', to: 'settings#update_personal', as: :update_personal_settings
    get "settings/subscription", to: "settings#subscription"

    # dashboard_category_lesson_path(category, lesson)
    get 'category/:category_id/classes/:id', to: 'lessons#show', as: :category_lesson
    # Models
    resources :activities
    resources :journal_entries, path: "entries"
    resources :categories
    resources :food_entries, path: "food-diary"
    resources :comments do
      resources :comments
    end
    resources :lessons, path: "classes" do
      resources :categories
      resources :comments, module: :lessons
      resources :likes, module: :lessons
    end
    resources :likes, only: [:create, :destroy]
    resources :recipes do
      resources :categories
      resources :comments, module: :recipes
      resources :likes, module: :recipes
    end
    resources :posts, path: "blog" do
      # resources :categories
      resources :comments, module: :posts
      resources :likes, module: :posts
    end

    resources :completed_lessons, only: [:create, :destroy]
    resources :users do
      resources :completed_lessons, only: [:create, :destroy]
    end
  end

  # RailsAdmin
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  # Redirects for old WordPress website's URLs
  # Pages
  get "new-year-new-you-challenge", to: redirect("beyond")
  get "online-classes", to: redirect("dashboard")
  get "pre-post-pregnancy-exercise", to: redirect("pregnancy")
  get "project_category/beyond", to: redirect("beyond")
  get "recorded-classes", to: redirect("dashboard")

  # Blogs
  get "how-to-fall-in-love-with-exercise", to: redirect("blog/how-to-fall-in-love-with-exercise")
  get "divarication-recti", to: redirect("blog/divarication-recti")
  get "get-overtired-baby-to-sleep", to: redirect("blog/get-overtired-baby-to-sleep")
  get "best-exercises-for-getting-rid-of-bingo-wings", to: redirect("blog/best-exercises-for-getting-rid-of-bingo-wings")
  get "childrens-mental-health-week-growing-together-in-2022", to: redirect("blog/childrens-mental-health-week-growing-together-in-2022")
  get "c-section-scar-pains", to: redirect("blog/c-section-scar-pains")
  get "first-trimester-yoga", to: redirect("blog/first-trimester-yoga")
  get "restore-your-core-postpartum-exercise", to: redirect("blog/restore-your-core-postpartum-exercise")
  get "core-exercises-for-women-that-every-mum-needs", to: redirect("blog/core-exercises-for-women-that-every-mum-needs")
  get "pelvic-floor-exercises-in-pregnancy-postnatal", to: redirect("blog/pelvic-floor-exercises-in-pregnancy-postnatal")
  get "world-breastfeeding-week", to: redirect("blog/world-breastfeeding-week")
  get "perinatal-mental-health-pregnant-in-pandemic", to: redirect("blog/perinatal-mental-health-pregnant-in-pandemic")
  get "postnatal-exercise-program", to: redirect("blog/postnatal-exercise-program")
  get "home-workouts-for-busy-mums", to: redirect("blog/home-workouts-for-busy-mums")
  get "the-importance-of-sports-for-children", to: redirect("blog/the-importance-of-sports-for-children")

  get 'cleanup/users/non-admin-nil-subscriptions', to: 'cleanup_users#non_admin_nil_subscriptions'


  # popular search form
  get 'dashboard/search', to: 'dashboard/search#index', as: :search_dashboard

  # Case Studies:
  get 'case-studies/defence-dot-com', to: 'case_studies#defence', as: :defence_case_study
  # # match '/edit_card',  to: 'subscribers#edit_card', via: 'get'
  # # get 'update_card', to: 'subscribers#update_card', as: :update_card
  #
  # get '/edit_card', to: 'subscribers#edit_card', as: :edit_card
  # post '/update_card', to: 'subscribers#update_card', as: :update_card
end
