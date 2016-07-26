class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  
  protect_from_forgery with: :exception
  
  before_action :configure_permitted_parameters, if: :devise_controller?

  before_action :verify_role, only: [:new, :create,:destroy, :edit, :update]

  skip_before_action :verify_role, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def verify_role
    if current_user.role.name === "user"
      redirect_to users_path
    end
  end
end
