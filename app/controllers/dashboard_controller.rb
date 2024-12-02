class DashboardController < ApplicationController
  def index
    @clients_count = User.select{ |c| c.accountant_id == current_user.id}.count unless !user_signed_in? || !current_user.is_accountant?
  end
end
