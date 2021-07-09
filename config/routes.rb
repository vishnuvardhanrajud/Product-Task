Rails.application.routes.draw do
  devise_for :users
   root to: "product#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/product/index', to: 'product#index', as:"product_index"
  get '/product/new_and_edit', to: 'product#new_and_edit_page', as:"product_new_and_edit"
  post '/product/create', to: 'product#product_create', as:"product_create"
  post '/product/:id', to: 'product#product_update', as: "product_update"
  delete '/product/delete/:id', to: 'product#product_delete', as: "product_delete"
end
