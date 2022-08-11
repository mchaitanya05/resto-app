Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/search'
  resources :products
  # devise_for :users
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  get 'admin/login'
  post   'admin/login'   => 'admin#create'
  post 'admin/logout' => 'admin#destroy'
  get 'admin/logout'
  resources :checkout, only: [:create]
  namespace :api do
    namespace :v1 do
      post :orders, to: 'orders#create'
    end
  end
  # get "home/index"
  get "orders/index"
  post "orders/index", to: 'orders#create'
  # post "orders/index"
  # resources :orders
  resources :home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
