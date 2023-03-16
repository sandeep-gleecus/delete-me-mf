class CleanupUsersController < ApplicationController
  before_action :authenticate_user!
  before_action :must_be_admin
  layout 'dashboard'

  def non_admin_nil_subscriptions
    total_count = 0
    total_users_deleted = 0
    total_users_ignored = 0
    total_users_not_found = 0
    file_name = if Rails.env.production?
                  'non_admin_nil_subscription_users_list.csv'
                else
                  'non_subscription_list_users_local.csv'
                end
    csv_text = File.read(Rails.root.join('lib', 'cleanup_users', file_name))
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
      total_count += 1
      row_hash = row.to_hash
      email = row_hash['Email'].strip
      user = User.find_by(email: email)
      if user
        ## if user.admin? || user.subscription || current_user.email.eql?(user.email) || user.free_subscription
        if user.admin? || current_user.email.eql?(user.email)  || user.free_subscription
          Rails.logger.debug("==== Ignoring DELETE because user is admin or has subscription OR under free ==== #{user.email}")
          total_users_ignored += 1
        else
          Rails.logger.debug("==== Deleting ==== #{user.email}")
          # total_users_deleted += 1
          total_users_deleted += 1  if user.destroy
        end
      else
        total_users_not_found += 1
      end
    end
    render locals: { total_count: total_count,
                     total_users_deleted: total_users_deleted,
                     total_users_ignored: total_users_ignored,
                     total_users_not_found: total_users_not_found }
  end


  private

  def must_be_admin
    return if current_user.admin?

    flash[:alert] = 'You are not authorized to do this action'
    redirect_to dashboard_root_path
  end
end
