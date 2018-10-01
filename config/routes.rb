Rails.application.routes.draw do
  resources :players, only: [:index, :show]
  resources :games, only: [:index, :show, :new, :create, :delete]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
