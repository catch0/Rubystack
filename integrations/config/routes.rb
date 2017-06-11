Rails.application.routes.draw do
  root 'users#index'
  get 'users/index'
  get 'users/new'
  get 'users/1' => "users#profile"
  get 'users/1/edit' => "users#edit"
  post 'users' => "users#create"
  get 'users/total'

resources :users
end
