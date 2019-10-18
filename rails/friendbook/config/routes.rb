Rails.application.routes.draw do


  get "accept_request/:id" => "friendships#accept_request", as: :accept_request
  get "delete_request/:id" => "friendships#delete_request", as: :delete_request
  get "pending_request"  => "friendships#index"
  post "add_friend/:id" => "friendships#create", as: :add_friend
  get "remove_friend/:id" => "friendships#destroy", as: :remove_friend
  resources :friendships
  get "users/sign_up" => "users#new", as: :sign_up
  resource :sessions,only:[:new,:create,:destroy]
  resources :users
  root "sessions#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
