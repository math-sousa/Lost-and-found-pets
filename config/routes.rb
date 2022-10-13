Rails.application.routes.draw do
  root to: "application#index"
  resources :perfil
  get '/login', to: 'perfil#login'


  resources :posts
end
