class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find_by(id: params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:position, :overall_rating, :price, :ppg, :off_rating, :def_rating, :user_id, :game_id)
  end

end
