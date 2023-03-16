RailsAdmin.config do |config|
  config.asset_source = :sprockets

  config.authorize_with do
    redirect_to main_app.root_path unless user_signed_in? && current_user.admin?
  end

  config.main_app_name = Rails.configuration.name

  config.actions do
    dashboard # mandatory
    index # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end

  config.model 'Post' do
    field :body do
      js_location { ActionController::Base.helpers.asset_path('actiontext.js') }
    end
  end
end
