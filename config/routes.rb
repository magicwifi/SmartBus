Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/new'

  root 'static_pages#home'

  get 'static_pages/help'
  resources :trashes
  resources :sites
  resources :bus_routes
  resources :bus_numbers
  resources :bus_drivers
  resources :metatrashes
  resources :passengers
  get 'metatrashes/detail/:id' => 'metatrashes#detail', as: 'detail_metatrash'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create' 
  post '/takes/register' => 'takes#create' 
  post '/reservations/register' => 'reservations#create' 
  delete 'logout' => 'sessions#destroy'
  post '/api/update_driver' => 'apis#update_driver' 
  get '/fetchgps/:bus_number_id' => 'apis#fetchgps' 

end
