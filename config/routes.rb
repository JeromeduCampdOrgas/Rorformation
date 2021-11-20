Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root to: 'pages#home'
  get '/bonjour(/:name)', to: 'pages#salut', as: 'salut'
  #Avec resources :posts on crée 7 routes différents pour la ressource posts
  
  resources :posts 
end
