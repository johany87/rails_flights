
Rails.application.routes.draw do
  
  get 'planes/index'

  get 'planes/new'

  get 'planes/create'

  get 'planes/destroy'

  get 'planes/edit'

  get 'planes/update'

  get 'planes/show'

  get 'planes/find_plane'

  get 'planes/plane_params'

  root to: "static_pages#welcome"
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }
  resources :cities
  resources :airports
  resources :airlines
  resources :flights
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
