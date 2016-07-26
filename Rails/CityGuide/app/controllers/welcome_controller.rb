class WelcomeController < ApplicationController
  
  def index
    if current_user.role.name === "user"
      redirect_to users_path
    
    elsif current_user.role.name === "admin"
      redirect_to admin_index_path
    end
  end

end
