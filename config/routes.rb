Rails.application.routes.draw do
  
  root "users#index"
  resources :categories
  resources :users
  resources :books
end
