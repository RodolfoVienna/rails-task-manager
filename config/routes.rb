Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#### The 'path' is unique based on the VERB (get, post, patch, ...) and the URL (/tasks)
# verb 'path', to: 'controller#action'

# # READ ALL THE TASKS
# get '/tasks', to: 'tasks#index'
# # CREATE a TASK
# get '/tasks/new', to: 'tasks#new' # display the from to create a TASK
# # WHEN THE user CLICKS in order to CREATE the TASK, there will be a POST ACTION !!!!
# post '/tasks', to: 'tasks#create'
# # READ one TASK
# get '/tasks/:id', to: 'tasks#show'
# # UPDATE a TASK (get '/task/:id WAS ALREADY TAKEN FROM THE '#SHOW' ACTION)
# get '/tasks/:id/edit', to: 'tasks#edit' ### Before UPDATE we have to find the TASK
# patch '/tasks/:id', to: 'tasks#update' #### The 'verb' to UPDATE is called PATCH
# # DELETE a TASK #### The 'action' to DELETE is called DESTROY but the verb is DELETE
# delete 'tasks/:id', to: 'tasks#destroy'
  resources :tasks
#### The 'path' is unique based on the VERB (get, post, patch, ...) and the URL (/tasks)
#      Prefix Verb   URI Pattern               Controller#Action
#     tasks GET    /tasks(.:format)          tasks#index
#           POST   /tasks(.:format)          tasks#create
#  new_task GET    /tasks/new(.:format)      tasks#new
# edit_task GET    /tasks/:id/edit(.:format) tasks#edit
#      task GET    /tasks/:id(.:format)      tasks#show
#           PATCH  /tasks/:id(.:format)      tasks#update
#           PUT    /tasks/:id(.:format)      tasks#update
#           DELETE /tasks/:id(.:format)      tasks#destroy
end
