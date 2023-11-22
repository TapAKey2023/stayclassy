Rails.application.routes.draw do
  devise_for :users
  root to: "lessons#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  resources :lessons do
    resources :bookings, only: [:create, :new, :edit, :show]
  end
  resources :users, only: [:create, :new, :edit, :show, :update]
  resources :users, only: :destroy
  # root "posts#index"

  resources :bookings, only: :destroy do
    collection do
      get :my_bookings, :my_classes
    end
  end
end
