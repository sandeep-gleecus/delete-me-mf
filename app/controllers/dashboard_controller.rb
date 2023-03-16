class DashboardController < ApplicationController
	before_action :authenticate_user!
	before_action :redirect_to_subscription, unless: -> { current_user.exempt_from_subscription? || current_user.has_active_subscription? }
	before_action :redirect_to_onboarding, unless: -> { current_user.onboarded? }
	layout "dashboard"
end
