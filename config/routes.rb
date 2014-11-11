Rails.application.routes.draw do

  ### ACCESS + MAIN ROUTES (feel free to change these, but make sure to add a path)

  root 'access#login'

  get '/', to: 'access#login'

  get 'signup', to: 'access#new'

  post 'signup', to: 'access#create'

  get 'login', to: 'access#login'

  post 'login', to: 'access#attempt_login'

  get 'logout', to: 'access#logout'

  ### USERS ROUTES (make sure to add a path)
  get 'users', to: 'users#index'

  get 'users/:id/edit', to: 'users#edit'

  get 'users/:id', to: 'users#show'

  delete 'users/:id', to: 'users#destroy'

  patch 'users/:id/', to: 'users#update'

  ### ORDER ROUTES (you need to build these - be sure to include the user_id for each one)

  get 'users/:user_id/orders', to: 'orders#index', as: 'orders'

  get 'users/:user_id/orders/:order_id/edit', to: 'orders#edit', as: 'orders_edit'

  # add routes for a new order, showing a single order and adding a new order

  ### PRODUCTS ROUTES (you need to build these)

  get 'products', to: 'products#index', as: 'products'

end
