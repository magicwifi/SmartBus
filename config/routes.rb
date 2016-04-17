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
  get 'bus_login' => 'bus_sessions#new'
  post 'login' => 'sessions#create' 
  post 'bus_login' => 'bus_sessions#create', as: 'bus_login_path'
  post '/takes/register' => 'takes#create' 
  post '/reservations/register' => 'reservations#create' 
  post '/reservations/cancel' => 'reservations#cancel' 
  delete 'logout' => 'sessions#destroy'
  delete 'bus_logout' => 'bus_sessions#destroy', as: 'bus_logout'
  post '/api/update_driver' => 'apis#update_driver' 
  get '/fetchgps/:bus_number_id' => 'apis#fetchgps' 
  get '/show_bus_detail/:bus_number_id' => 'apis#show_bus_detail' 
  get '/show_bus_all' => 'apis#show_bus_all' 

end
