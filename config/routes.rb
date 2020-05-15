Rails.application.routes.draw do
  resources :marketplaces
  root 'pages#home'

  devise_for :patrons
  resources :patrons
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
