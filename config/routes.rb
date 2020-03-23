Rails.application.routes.draw do
  resources :disasters
  resources :supplies
  resources :bunkers
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
