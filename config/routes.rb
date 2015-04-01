Rails.application.routes.draw do
  get 'admin/index', as: 'admin'

  devise_for :users

  scope '(:locale)' do
    resources :orders
    resources :line_items
    resources :carts
    resources :products
    root 'store#index', as: 'store', via: :all
  end

  # resources :products

  patch 'orders/:id/ship' => 'orders#ship', as: 'ship_order'

end
