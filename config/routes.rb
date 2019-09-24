Rails.application.routes.draw do
  devise_for :users

  # Ici on définit que l'url de base ('/') renvoit le HTML dans app/views/pages/home.html.erb
  root to: 'pages#home'
  get "/games", to: 'games#index'
  get '/game/:id', to: 'games#show'

end

  # On peut ajouter d'autres pages comme :
  # get "/michel", to: 'pages#michel'


