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
    @player_price = @player.price
    @team_1_user = Team.all[-2].user
    @team_1_current_budget = Team.all[-2].user.budget
    if @team_1_current_budget >= @player_price
      @team_1_updated_budget = @team_1_current_budget - @player_price
      @player.update(team_id: params[:player][:team_id])
      @team_1_user.update(budget: @team_1_updated_budget)
      redirect_to '/players/team_2'
    else
      flash[:budget_error] = "You don't have the budget to draft this player"
      redirect_to '/players/team_1'
    end
  end

  def update_player_2
    @player = Player.find_by(id: params[:player][:name])
    @player_price = @player.price
    @team_2_user = Team.all[-1].user
    @team_2_current_budget = Team.all[-1].user.budget
    @players = Player.all
    @team = Team.all[-1]
    count = 0
    if @team_2_current_budget >= @player_price
      @team_2_updated_budget = @team_2_current_budget - @player_price
      @player.update(team_id: params[:player][:team_id])
      @team_2_user.update(budget: @team_2_updated_budget)
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
    else
      flash[:budget_error] = "You don't have the budget to draft this player"
      redirect_to '/players/team_2'
    end
  end

  private

  def player_params
    params.require(:player).permit(:name, :player_team, :position, :overall_rating, :price, :ppg, :off_rating, :def_rating, :team_id)
  end

end
