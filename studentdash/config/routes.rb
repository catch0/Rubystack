Rails.application.routes.draw do
  root 'dojos#index'
  resource :dojos
  resource :students
  get '/dojos/:id' => "dojos#show"
  get '/dojos/edit/:id' => "dojos#edit"
  patch '/dojos/update/:id' => "dojos#update"
  patch 'dojos/edit/update/:id' => 'dojos#update'   
  get '/dojos/destroy/:id' => "dojos#destroy"
  get '/dojos/:id/students/new' => "students#new"
  get '/students/:id' => "students#show"
  get '/students/destroy/:id' => "students#destroy"
  get '/dojo/:id/students/:id' => "students#show"
  get '/students/edit/:id' => "students#edit"
  patch '/student/update/:id' => "students#update"
  get '/student/update/:id' => "students#update"
end
