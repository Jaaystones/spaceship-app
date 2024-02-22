Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Add the sign-out route explicitly
  devise_scope :user do
    get 'sign_out', to: 'devise/sessions#destroy'
  end

  resources :posts do
    resources :likes, only: [:create]
    resources :comments, only: [:create]
  end

  delete '/posts/:id', to: 'posts#destroy', as: 'delete_post'

  devise_for :users
  root to: 'home#front'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
