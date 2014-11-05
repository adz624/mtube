Rails.application.routes.draw do
  root 'home#index'

  resources :movies, only: [:index, :show] do
    resource :like, only: [:create, :destroy], module: :movie
  end

  namespace :admin do
    resources :movies
  end
end