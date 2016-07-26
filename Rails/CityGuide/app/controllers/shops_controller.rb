class ShopsController < ApplicationController
  
  def index
  end
  
  def new
    @shop = Shop.new
  end
  
  def show
    @shop = Shop.find(params[:id]) 
    if current_user.role.name === "user"
      @hitcount = current_user.hitcounts.new(hitable_id: @shop.id, hitable_type: "Shop")
      @hitcount.save
    end
  end

  def edit
    @shop = Shop.find(params[:id])
  end
  
  def create
    @shop = Shop.new(shop_params)
    if !@shop.area.blank?
      loc = Geocoder.coordinates(@shop.area)
      @shop.lat = loc.first
      @shop.long = loc.last
    else
      loc = nil
    end
    
    if @shop.save
      redirect_to admin_index_path
    else
      render 'new'
    end
  end

  def update
    @shop = Shop.find(params[:id])    
    if @shop.update(shop_params)
      if :area_changed?
        if !@shop.area.blank?
          loc = Geocoder.coordinates(params[:shop][:area])
          @shop.lat = loc.first
          @shop.long = loc.last
          @shop.save
          else
            loc = nil
          end
      end
      redirect_to @shop
    else
      render 'edit'
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy 
    redirect_to admin_index_path
  end

  private
  def shop_params
    params.require(:shop).permit(:name, :area, :pin, :contact, :lat, :long)
  end
end
