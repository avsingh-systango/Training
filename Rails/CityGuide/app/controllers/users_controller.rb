class UsersController < ApplicationController
 
  def index
    render 'index', locals: {status: "1"}
  end
  
  def show
    @item = Item.find_by_name params[:item]
    @area = params[:area]
    if @item == nil
      render 'index', locals: {status: "0"}
    else
      @hitcount = current_user.hitcounts.new(hitable_id: @item.id, hitable_type: "Item")
      @hitcount.save
    end
  end
  
end
