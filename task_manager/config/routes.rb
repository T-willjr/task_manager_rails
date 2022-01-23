Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index' #When user requests /, go to welcome class(controller) and execute index method
  get '/tasks', to:'tasks#index' #When user requests /tasks routes to controller tasks method index
  get '/tasks/new', to:'tasks#new' #When user requests tasks/new routes to controller tasks method new
  get '/tasks/:id', to: "tasks#show"
  get '/tasks/:id/edit', to: "tasks#edit"

  post '/tasks', to:'tasks#create'
  patch '/tasks/:id', to: 'tasks#update'
  delete '/tasks/:id', to: 'tasks#destroy'
end
