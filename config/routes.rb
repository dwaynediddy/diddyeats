Rails.application.routes.draw do
  resources :marketplaces
  root to: 'pages#home'
  devise_for :views
  devise_for :patrons
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
