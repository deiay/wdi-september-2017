Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resource :users, only: %i(create new)
  resource :sessions, only: %i(create new destroy)
  resources :products, only: %i(index)
  root 'products#index'
end
