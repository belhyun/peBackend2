Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :pe_exchanges
  resources :pe_trade_exchanges
  resources :pe_exchange_products
  resources :pe_recommends
  resources :pe_exchange_commons
  resources :pe_products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
