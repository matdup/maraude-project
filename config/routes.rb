Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "dashboard", to: "dashboard#index"


  resources :maraudes, only: [:index, :show] do
    resources :bookings, only:  [:new, :create]
  end

  resources :dashboard, only: [:show] do
  end
end
