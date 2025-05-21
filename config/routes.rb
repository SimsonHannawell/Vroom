Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  get '/my_bookings', to: 'bookings#my_bookings'

  get "up" => "rails/health#show", as: :rails_health_check

  # Nest bookings under cars for only :new and :create
  resources :cars do
    resources :bookings, only: [:new, :create]
  end

  # All other actions (index, show, edit, update, destroy)
  resources :bookings, except: [:new, :create] do
    resources :reviews, only: [:new, :create]
  end

  post "/bookings/:id/accept", to: "bookings#accept", as: :accept_booking
  post "/bookings/:id/decline", to: "bookings#decline", as: :decline_booking
end

