Rails.application.routes.draw do
  devise_for :perfils

  devise_scope :perfil do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'

    authenticated :perfil do
      root 'mural#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
    
  end

  get '/mural/index', to: 'mural#index' 

  post '/mural/filtro', to: 'mural#filtro'

  resources :posts
end
