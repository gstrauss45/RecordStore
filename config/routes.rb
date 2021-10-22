Rails.application.routes.draw do
  root 'users#index'
  get '/year', to: 'albums#year'
  get '/genre', to: 'albums#genre'
  resources :songs
  resources :artists
  resources :albums
end
