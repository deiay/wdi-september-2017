Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'rides' => 'rides#index', as: 'rides'
  get 'rides/:id' => 'rides#show', as: 'ride' #RidesController.new.show

end
