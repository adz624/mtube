Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  resources :movies, only: [:index, :show] do
    resource :like, only: [:create, :destroy], module: :movie
  end

  namespace :admin do
    resources :movies
  end
end