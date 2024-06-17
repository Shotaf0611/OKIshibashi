Rails.application.routes.draw do
  
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'sakes/morning'=>'sakes#morning'
  get 'sakes/friend'=>'sakes#friend'
  get 'sakes/partner'=>'sakes#partner'
  resources :users, only: [:show]
  resources :sakes do
    resources :likes, only: [:create, :destroy]
  end


  

  root 'sakes#index'
    


end
