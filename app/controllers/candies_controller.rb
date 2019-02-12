class CandiesController < ApplicationController

   def create
	 @shop = Shop.find(params[:shop_id])
      @candy = @shop.candies.create(candy_params)
      redirect_to(shop_path(@shop))
    end

   

def update
     @shop = Shop.find(params[:shop_id])
     @candy = Candy.find(params[:id])
     #moves a candy to a selected shelf
     if(params[:move_to_shelf]=="1")
         shelf = Shelf.find(params[:candy][:shelf_id])
         #passing hash of new attributes that we want on candy
         @candy.update_attributes(:shelved => true, :shelf => shelf)           
    else
         @candy.update_attributes(:shelved => false)
    end
    redirect_to(shop_path(@shop))    
end

     private

		  def candy_params
		    params.require(:candy).permit(:name)
		  end

     
end
