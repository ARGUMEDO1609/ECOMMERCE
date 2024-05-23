Rails.application.routes.draw do
  devise_for :admins
  get 'home/index'

  # Defines the root path route ("/")
  root "home#index"

  authenticate :admin_user do
    root to: "admin#index", as: :admin_root
  end

  namespace :admin do
    resources :stocks
    resources :categories
    resources :products
  end

  get "admin" => "admin#index"
end

