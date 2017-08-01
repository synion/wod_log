Rails.application.routes.draw do
  devise_for :users
  resources :workouts
  resources :users, :only => [:show] do
    resources :personal_bests
  end
  root 'workouts#index'
end
