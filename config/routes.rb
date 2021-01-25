Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#home'

  resources :users, only: [:show, :edit, :update, :create, :index, :destroy, :new]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update]
  get "home/about", to: "homes#about"
end
