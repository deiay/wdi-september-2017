Rails.application.routes.draw do
  get 'products/:id' => 'products#show'
end


