Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/new'

  root 'static_pages#home'

  get 'static_pages/help'
  resources :trashes
  resources :bus_drivers
  resources :metatrashes
  get 'metatrashes/detail/:id' => 'metatrashes#detail', as: 'detail_metatrash'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create' 
  delete 'logout' => 'sessions#destroy'

end
