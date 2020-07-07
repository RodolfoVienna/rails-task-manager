Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # VERB "PATH", TO: "CONTROLLERNAME#ACTION"
  # READ all TASKS
  get "index", to: "anothertasks#index"
  # READ one Task
  get "index/:id", to: "anothertasks#show", as: :banana
  # CREATE new Task
  get "index/new/", to: "anothertasks#new"
end
