Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  post 'paginating', to: 'home#index', via: [:post, :get]
  post 'home', to: 'home#send_message', via: [:post]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
