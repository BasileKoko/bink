Rails.application.routes.draw do
  root to: "home#index"
  get '/images', to: "images#index"
end
