Rails.application.routes.draw do

  get '/players/team_1', to: 'players#team_1'
  get '/players/team_2', to: 'players#team_2'
  patch '/players', to: 'players#update_player'
  patch '/players_path', to: 'players#update_player_2'
  resources :teams, only: [:index, :new, :create]
  resources :players, only: [:index, :show]
  resources :games, only: [:index, :show, :new, :create, :destroy]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
