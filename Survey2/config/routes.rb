Rails.application.routes.draw do
  get 'welcome/index'
  get 'welcome/new'
  root 'welcome#index'
  get '/submit' => 'welcome#submit'
  post '/submit' => 'welcome#submit'

end
