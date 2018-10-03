class GamesController < ApplicationController

  def index
    @game = Game.all[-1]
    @players = Player.all
    @team_1 = Team.all[-2]
    @team_2 = Team.all[-1]
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(home_score: 0, away_score: 0, quarter_updates: "")
    @players = Player.all
    @players.each do |player|
      player.update(team_id: 3)
    end
    User.destroy_all
    redirect_to new_user_path
  end

  def update
    @game = Game.all[-1]
    @game.update 
    redirect_to
  end

  def destroy
    @game = Game.find_by(id: params[:id])
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:home_score, :away_score, :quarter_updates)
  end

end
