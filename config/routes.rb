Rails.application.routes.draw do
  get 'user/index'
  get 'trips/index'
  root 'trips#index'
  get 'trips/index'
  get '/users', to:'user#index' 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users do
    resources :trips
  end

  # Defines the root path route ("/")
  # root "posts#index"
end

