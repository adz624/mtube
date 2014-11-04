Rails.application.routes.draw do
  root 'home#index'

  resources :movies, only: [:index, :show] do
    post :like, on: :member
  end

  namespace :admin do
    resources :movies
  end
end