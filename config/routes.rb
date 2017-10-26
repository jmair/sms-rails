Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  match 'home/:page', to: 'home#index', via: [:get, :post]
  post 'home', to: 'home#send_message'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
