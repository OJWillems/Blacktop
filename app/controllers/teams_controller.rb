class TeamsController < ApplicationController

  def new
    #access users and players to create a team
    @players = Player.all
    @teams = Team.all

    @team_1 = User.all[-2]
    @team_2 = User.all[-1]

  end









end
