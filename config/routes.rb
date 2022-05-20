Rails.application.routes.draw do
  resources :users, only: [:index, :show] do
    resources :items, only: [:show, :index, :create]
  end
  resources :items, only: [:show, :index] do
    resources :users, only: [:show, :index]
  end
end
