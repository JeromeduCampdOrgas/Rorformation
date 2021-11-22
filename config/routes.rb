Rails.application.routes.draw do


  get 'categories/index'
  get 'categories/show'
  get 'categories/update'
  get 'categories/destroy'
  get 'categories/new'
  get 'categories/create'
  get 'categories/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'pages#home'
  get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'
  #Avec resources :posts on crée 7 routes différents pour la ressource posts
  
  resources :posts 
  resources :categories

end
