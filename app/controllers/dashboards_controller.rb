class DashboardsController < ApplicationController
  def home
    # UserMailer.with(user: @user).welcome_email.deliver_now
    if current_user.usertype == 'Manager'
      @projects = current_user.projects.all
    else
      @projects = current_user.project_assigned
    end
  end
end
