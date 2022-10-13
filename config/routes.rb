Rails.application.routes.draw do
  root to: "application#index"
  resources :perfil
  get '/mural/index', to: 'mural#index' 
  resources :posts
end
