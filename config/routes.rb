Rails.application.routes.draw do
  devise_for :users
  authenticated :user do
    root to: "pages#home", as: :authenticated_root
  end

  unauthenticated do
    root to: "pages#home", as: :unauthenticated_root
  end

   # This ensures `root_path` helper is defined
  root to: "pages#home"

  get "up" => "rails/health#show", as: :rails_health_check

  get '/my_bookings', to: 'bookings#index', as: 'my_bookings'

  # Nest bookings under cars for only :new and :create
  resources :cars do
    resources :bookings, only: [:new, :create, :index]
  end

  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:new, :create]

    member do
      get :confirm
      post :accept
      post :decline
    end
  end
end
