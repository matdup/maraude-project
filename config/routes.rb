Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/dashboard", to: "users#dashboard"

  resources :maraudes do
    resources :bookings, only: :create
  end


resources :bookings, only: [:show] do
    member do
      patch :accept
      patch :decline
    end
  end

end
