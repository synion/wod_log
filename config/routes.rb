Rails.application.routes.draw do
  devise_for :users
  resources :workouts
  resources :users, :only => [:show]
  root 'workouts#index'
end
