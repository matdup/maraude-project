Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :maraudes, only: [:index, :show] do
    resources :bookings, only:  [:new, :create]
  end

  get "dashboard", to: "pages#dashboard"
  get "mycurrentbookings", to: "pages#mycurrentbookings"
  get "mypastbookings", to: "pages#mypastbookings"

end
