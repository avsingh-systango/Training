class ShopsController < ApplicationController
  def index
  end
  def new
    @shop = Shop.new
  end
  def create

    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to admin_index_path
    else
      render 'new'
    end
  end

  private
  def shop_params

    params.require(:shop).permit(:name, :area, :pin, :contact, :lat, :long)
  end
end
