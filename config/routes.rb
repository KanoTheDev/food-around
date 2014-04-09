Rails.application.routes.draw do
  devise_for :users
  get "reviews/new"

  resources :restaurants do
    resources :reviews
  end

  root to: "home#index"
  
end
