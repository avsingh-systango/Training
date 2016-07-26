class UsersController < ApplicationController
  before_action :verify_user
 
  def index
    render 'index', locals: {status: "1"}
  end
  
  def show
    @item = Item.where('lower(name) = ?', params[:item].downcase).take
    @area = params[:area]
    if @item == nil
      render 'index', locals: {status: "0"}
    else
      @hitcount = current_user.hitcounts.new(hitable_id: @item.id, hitable_type: "Item")
      @say = @hitcount.save
    end
  end

  private
    def verify_user
      if current_user.role.name === "admin"
        redirect_to admin_index_path
      end
    end
  
end
