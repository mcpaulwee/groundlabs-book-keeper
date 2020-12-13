Rails.application.routes.draw do
  root "users#index"
  
  resources :borrowed_books
  resources :categories
  resources :users
  resources :books
end
