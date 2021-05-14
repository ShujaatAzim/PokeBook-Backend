Rails.application.routes.draw do
  resources :cards
  resources :users
  resources :users, only: [:index, :show, :create]
  post '/login', to: 'authentication#login'
  get '/profile', to: 'users#profile'
end
