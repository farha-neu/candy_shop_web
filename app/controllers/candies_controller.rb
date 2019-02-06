class CandiesController < ApplicationController

   def create
	 @shop = Shop.find(params[:shop_id])
      @candy = @shop.candies.create(candy_params)
      redirect_to(shop_path(@shop))
    end

   

def update
     @shop = Shop.find(params[:shop_id])
     @candy = Candy.find(params[:id])
     if(params[:move_to_shelf]=="1")
         shelf = Shelf.find(params[:candy][:shelf_id])
         @candy.update_attributes(:shelved => true, :shelf => shelf)           
    else
         @shelf = @candy.shelf
         @shelf.candies.delete(@candy)
         @candy.update_attributes(:shelved => false)
    end
    redirect_to(shop_path(@shop))    
end

     private

		  def candy_params
		    params.require(:candy).permit(:name)
		  end

     
end
