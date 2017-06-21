Rails.application.routes.draw do
  root to: "home#index"
  resources :images
end
