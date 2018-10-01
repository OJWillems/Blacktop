class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find_by(id: params[:id])
  end

  private

  def player_params
    params.require(:player).permit(:name, :player_team, :position, :overall_rating, :price, :ppg, :off_rating, :def_rating, :team_id)
  end

end
