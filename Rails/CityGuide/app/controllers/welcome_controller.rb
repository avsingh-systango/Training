class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    if current_user.role.name === "user"
      redirect_to user_path(current_user)

    elsif current_user.role.name === "admin"
      redirect_to "http:www.admin.com", notice: 'You are not logged in.'
    else
      redirect_to "http:www.error.com", notice: 'You are not logged in.'
    end
  end
end
