Rails.application.routes.draw do
  resources :marketplaces
  resources :menu_items
  root 'pages#home'

  devise_for :patrons
  resources :patrons, only: [:show]
  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
