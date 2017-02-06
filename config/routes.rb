Rails.application.routes.draw do
  # MVC - Modal, View, Controller
  # Model - represents out database table
  # View - HTML / ERB code
  # Controller - Pulls a Model / Models From Database
  # Sets Instance Variables For Our View

  root 'posts#index'  #Defining what happens when we select specific URLS

  get 'posts/:id', to: 'posts#show', as: 'post_show' #need to reference the id
  get 'post', to: 'posts#new'
  get 'edit_post/:id', to: 'posts#edit', as: 'edit_post'

  post 'posts', to: 'posts#create'

  patch '/post', to: 'posts#update'

  delete 'posts', to: 'posts#destroy'
end
