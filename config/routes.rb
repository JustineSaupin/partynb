Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # en tant que renter
  resources :party_places, only: [:index, :show] do
    resources :reservations, only: [ :create]
  end

  resources :reservations, only: [] do
    member do
      patch :cancel
    end
  end

  # en tant que owner et ou renter
  resource :profile, only: [:show]

  # en tant que owner
  namespace :owner do
    resources :party_places, only: [:new, :create]
    resources :reservations, only: [] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
