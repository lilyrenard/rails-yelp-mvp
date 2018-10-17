Rails.application.routes.draw do
  resources :restaurants, only: [:show, :new, :create, :index] do
    resources :reviews, only: [:new, :create]
  end
end
