Rails.application.routes.draw do
  devise_for :patronsProfile
  resources :patrons_profile

  resources :marketplaces
  root 'pages#home'

  devise_for :views
  devise_for :patrons
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
