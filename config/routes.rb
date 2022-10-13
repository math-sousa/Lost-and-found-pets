Rails.application.routes.draw do
  root to: "application#index"
  resources :perfil
  get '/login', to: 'perfil#login'
  post '/login', to: 'perfil#process_login'

  resources :posts
end
