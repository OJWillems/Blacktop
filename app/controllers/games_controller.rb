class GamesController < ApplicationController

  def index
    @games = Game.all
  end

  def show
    @game = Game.find_by(id: params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.create(game_params)
    redirect_to @game
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
