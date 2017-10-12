Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/puppies' => 'puppies#index'
  # get '/puppies/new' => 'puppies#new'

  resources :puppies
end
