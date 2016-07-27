class UsersController < ApplicationController
  before_action :verify_user
 
  def index
    render 'index', locals: {status: "1"}
  end
  
  def show
    begin
      @item = Item.where('lower(name) = ?', params[:item].downcase).take
      @area = params[:area]
      @hitcount = current_user.hitcounts.new(hitable_id: @item.id, hitable_type: "Item")
      @say = @hitcount.save
    rescue
       render 'index', locals: {status: "0"}
    end
  end

  private
    def verify_user
      if current_user.role.name === "admin"
        redirect_to admin_index_path
      end
    end
  
end
