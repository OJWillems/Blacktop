Rails.application.routes.draw do

  get '/players/team_1', to: 'players#team_1'
  get '/players/team_2', to: 'players#team_2'
  get '/games/update_game', to: 'games#update_game'
  patch '/games', to: 'players#update_player', as: 'update_game'
  patch '/players_path', to: 'players#update_player_2'
  resources :teams, only: [:index, :new, :create]
  resources :players, only: [:index, :show]
  resources :games
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
