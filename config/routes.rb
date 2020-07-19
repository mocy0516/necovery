Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get "/" => "home#top"

  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  post "users/:id/icon_destroy" => "users#icon_destroy"
  post "users/:id/icon_update" => "users#icon_update"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  post "users/create" => "users#create"
  get "signup" => "users#new"
  get "users/index" => "users#index"
  get "users/:id" => "users#show"
  get "users/:id/likes" => "users#likes"
  get "users/:id/destroy_form" => "users#destroy_form"
  post "users/:id/destroy" => "users#destroy"
  get "/login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  get "posts/:id" => "posts#show"
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  get "about" => "home#about"

end
