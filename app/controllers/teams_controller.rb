class TeamsController < ApplicationController

  def index
    @players = Player.all
    @team_1 = Team.all[-2]
    @team_2 = Team.all[-1]
  end


end
