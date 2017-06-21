Rails.application.routes.draw do
  root to: "home#index"
  resources :images, only: [:index, :create]
  resources :search, only: [:index, :show]
end
