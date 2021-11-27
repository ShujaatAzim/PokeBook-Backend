Rails.application.routes.draw do
  resources :cards
  resources :users
  resources :users, only: [:index, :show, :create, :destroy]
  post '/login', to: 'authentication#login'
  get '/profile', to: 'users#profile'
  get '/all_cards', to: 'cards#all_cards'
  get '/:id', to: 'cards#collection'
  get '/collection/:id', to: 'users#user_cards'
end
