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

  def update_game
    @game = Game.all[-1]
    @players = Player.all
    @team_1 = Team.all[-2]
    @team_2 = Team.all[-1]
    @game.game_sequence
    @current_period_count = @game.period_counter
    @new_count = @current_period_count + 1
    @game.update(period_counter: @new_count)
    @game_count = @game.period_counter
  end

  def create
    @game = Game.create(period_counter: 0, home_score: 0, away_score: 0, game_updates: "")
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

  def end_game
    @game = Game.all[-1]
    @team_1 = Team.all[-2]
    @team_2 = Team.all[-1]
  end

  private

  def game_params
    params.require(:game).permit(:period_counter, :home_score, :away_score, :game_updates)
  end

end
