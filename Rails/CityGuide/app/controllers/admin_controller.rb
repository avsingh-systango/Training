class AdminController < ApplicationController
  before_action :check_user, only: :index

  def index
    @shops = Shop.all
  end

  def show
    check_user
  end

  def check_user
    if current_user.role.name != "admin"
      redirect_to :controller => 'users', :action => 'index'
    end
  end
end
