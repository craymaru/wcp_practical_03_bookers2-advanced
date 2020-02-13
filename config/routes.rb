Rails.application.routes.draw do
  # ROUTES

  # ROOT
  root "home#top"

  # ABOUT
  get "home/about"

  # RESOURCES
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]
  
  resources :books, only: [:index, :show, :edit, :create, :update, :destroy] do
    resource :favorites, only: [:create, :destroy]
  end

  get "users/:id" => "users#show", as: :mypage
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
