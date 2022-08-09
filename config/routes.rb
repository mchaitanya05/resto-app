Rails.application.routes.draw do
  resources :line_items
  resources :carts
  get 'gallery/index'
  get 'gallery/search'
  resources :products
  devise_for :users
  get 'admin/login'
  post   'admin/login'   => 'admin#create'
  post 'admin/logout' => 'admin#destroy'
  get 'admin/logout'
  # get "home/index"
  resources :home
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
