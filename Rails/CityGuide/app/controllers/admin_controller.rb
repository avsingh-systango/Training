class AdminController < ApplicationController
  
  def index
    check_user
  end
  def show
    check_user
  end
  def check_user
    if current_user.role.name != "admin"
      redirect_to :controller => 'users', :action => 'show'
    end
  end
end
