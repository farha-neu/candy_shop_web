class ShopsController < ApplicationController

    layout 'home'

    # GET /shops
    # URL Helper: shops_path
    def index
    	# Find all shops
        @shops = Shop.newest_first
        @shop_new = Shop.new
    end

    # GET /shops/:id
    # URL Helper: shops_path(:id)
    def show
       @shop = Shop.find(params[:id])
       @unshelved_candies = @shop.candies.unshelved_candies
       puts @shop.shelves
       puts "********************************************************"
       @shop.candies.each do |candy|
         puts "1"
         puts candy.name
       end
    end

    def create
	   @shops = Shop.newest_first
      @shop_new = Shop.new(shop_params)
      if @shop_new.save
         redirect_to(shop_path(@shop_new))
      else
         render('index')
      end
    end

     private

		  def shop_params
		    params.require(:shop).permit(:name)
		  end

end
