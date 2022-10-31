Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get '/birds' => 'birds#index'
  # get 'birds/:id' => 'birds#show'
  resources :birds, only: [:index, :show]
end
