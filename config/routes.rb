Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/todo/index', to: 'todo#index', as:"task_index"
  get '/todo/new_and_edit', to: 'todo#new_and_edit_page', as:"task_new_and_edit"
  post '/todo/create', to: 'todo#task_create', as:"task_create"
  post '/todo/:id', to: 'todo#task_update', as: "task_update"
  patch '/todo/status/:id', to: 'todo#task_update_iscomplete_status', as: "task_iscomplete_status", xhr: true
  delete '/todo/delete/:id', to: 'todo#task_delete', as: "task_delete"
end
