class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find_by(id: params[:id])
  end

  def team_1

    @players = Player.all
    @team = [Team.all[-2]]

    @team_1 = User.all[-2]

    @player = Player.new

    @unpicked_players = @players.select do |player|
      player.team_id == 3
    end

  end

  def team_2
    @players = Player.all
    @team = [Team.all[-1]]

    @team_2 = User.all[-1]

    @player = Player.new

    @unpicked_players = @players.select do |player|
      player.team_id == 3
    end
  end

  def update_player
    @player = Player.find_by(id: params[:player][:name])
    @player.update(team_id: params[:player][:team_id])
    redirect_to '/players/team_2'
  end

  def update_player_2
    @player = Player.find_by(id: params[:player][:name])
    @player.update(team_id: params[:player][:team_id])
    @players = Player.all
    @team = Team.all[-1]
    count = 0

    @players.each do |player|
      if player.team_id == @team.id
        count += 1
      end
    end
  
    if count < 5
      redirect_to '/players/team_1'
    else
      redirect_to teams_path
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :player_team, :position, :overall_rating, :price, :ppg, :off_rating, :def_rating, :team_id)
  end

end
