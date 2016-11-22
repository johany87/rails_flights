
Rails.application.routes.draw do
  get 'example/index'

  get 'example/new'

  get 'example/create'

  get 'example/update'

  get 'example/show'

  get 'example/destroy'

  root to: "static_pages#welcome"
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations',
        passwords: 'users/passwords'
      }
  resources :cities
  resources :airports
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
