Rails.application.routes.draw do
  namespace :admin, only: [:update, :destroy] do
    resources :restaurants
    resources :reviews
  end
  resources :restaurants, only: [:show, :new, :create, :index] do
      resources :reviews, only: [:new, :create]
  end
end
