Rails.application.routes.draw do
  # get 'shops/shelves'
  # get 'shops/candies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'shops#index'

  # get 'about'=>'demo#index', as:'about' #custom url

  resources :shops

  resources :shops do
    resources :shelves, :candies
  end


end
