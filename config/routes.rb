Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # users routes
  get 'user/getuser', to: 'users#get_user'
  get 'user/orders/:id', to: 'users#user_orders'
  post 'user/create', to: 'users#create'
  patch 'user/update/:id', to: 'users#update'

  # orders routes
  get 'order/:id', to: 'orders#show'
  post 'order/create', to: 'orders#create'

  # products routes
  get 'products/index', to: 'products#index'
  get 'product/:id', to: 'products#show'
  post 'product/create', to: 'products#create'

end
