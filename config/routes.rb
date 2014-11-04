Rails.application.routes.draw do
  root 'home#index'

  resources :movies, only: [:index, :show]

  namespace :admin do
    resources :movies
  end
end