Rails.application.routes.draw do
  resources :teams, only: [:new, :create]
  resources :players, only: [:index, :show]
  resources :games, only: [:index, :show, :new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
