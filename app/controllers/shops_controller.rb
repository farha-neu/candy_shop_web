class ShopsController < ApplicationController

    layout 'home'

    # GET /shops
    # URL Helper: shops_path
    # It finds all the shops to list them
    # Assigns it as an array to instance variable @shops
    # Also creates a new shop instance for creation of new shop
    # It renders the index template
    def index
    	 # Find all shops
        @shops = Shop.newest_first
        @shop_new = Shop.new
    end

    # GET /shops/:id
    # URL Helper: shops_path(:id)
    # Gets id from query parameter
    def show
       @shop = Shop.find(params[:id])
       @candy = Candy.new
       @shelf = Shelf.new
       @unshelved_candies = @shop.candies.unshelved_candies
    end

    # Processes the form
    # Instantiates a new object using form params
    # If save succeeds, redirects to the newly created shop page
    # else renders the same page
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
       # telling params hash what attributes to permit on each request
       # permit marks it available for mass assignment
		  def shop_params
		    params.require(:shop).permit(:name)
		  end

end
