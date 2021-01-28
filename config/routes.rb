Rails.application.routes.draw do

  devise_for :users
  root to: 'homes#home'
  get "home/about", to: "homes#about"

  resources :users, only: [:show, :edit, :update, :create, :index, :destroy, :new]

  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  #コメント、いいねはbooksの中にネストすることで入れ子構造を確立

end
