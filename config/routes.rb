Rails.application.routes.draw do

  resources :patrons_profile
  get "/patronprofile", to: "patrons_profile#show"
  get "/patronprofile/:id", to: "patrons_profile#show"

  resources :marketplaces
  root 'pages#home'

  devise_for :views
  devise_for :patrons
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
