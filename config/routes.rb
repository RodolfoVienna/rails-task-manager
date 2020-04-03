Rails.application.routes.draw do
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get 'tasks', to: 'tasks#index'
# "get 'tasks'" e' il nome del percorso
# "to: 'tasks#index'" e' il percorso (tasks/index)
# alla pagina (index.html) che deve visualizzare quando
# si trova al percorso 'tasks'

get 'tasks/new', to: 'tasks#new', as: :new_task
# Route ----> va nel Controller che dice cosa fare nella ---> View

get 'tasks/:id', to: 'tasks#show', as: :task
  # definiamo il PREFIX ":task" per la route in modo da poterlo poi
  # utilizzare nei link (vedi la VIEW show come percorso "task_path")
  # ECCO COSA APPARE SUL TERMINAL:
  # Prefix  Verb URI Pattern         Controller#Action
  # tasks   GET  /tasks(.:format)     tasks#index
  # task    GET  /task/:id(.:format)  tasks#show

post 'tasks', to: 'tasks#create'
# con post, delete e patch il ROUTER passa nel controller
# e torna indietro perche' post,delete e patch non hanno una view page!!!!!

get 'tasks/:id/edit', to: 'tasks#edit', as: :edit

patch 'tasks/:id', to: 'tasks#update'

delete 'tasks/:id', to: 'tasks#destroy'

end
