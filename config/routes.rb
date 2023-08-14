Rails.application.routes.draw do
  get 'users/show'
  get 'rooms/index'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users
  root "homes#index"
  resources :rooms do
    resources :messages
  end
end
