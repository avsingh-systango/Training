class WelcomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user.role.name === "user"
      redirect_to users_path
    elsif current_user.role.name === "admin"
      redirect_to admin_index_path
    else
      redirect_to "http:www.error.com", notice: 'You are not logged in.'
    end
  end
end
