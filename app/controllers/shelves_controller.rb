class ShelvesController < ApplicationController

	def create
	  @shop = Shop.find(params[:shop_id])
      @shelf = @shop.shelves.create(shelf_params)
      redirect_to(shop_path(@shop))
    end

    def destroy
        @shop = Shop.find(params[:shop_id])
    	@shelf = Shelf.find(params[:id])
    	@shelf.candies.update_all(:shelved => false)
    	@shelf.destroy
        redirect_to(shop_path(@shop))
    end

     private

		  def shelf_params
		    params.require(:shelf).permit(:name)
		  end
end
