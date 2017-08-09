Rails.application.routes.draw do
  resources :bookings
  resources :rooms do
  	resources :reviews
  end
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks", :registrations => "registrations" }
  root 'pages#info'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
