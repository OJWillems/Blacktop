class TeamsController < ApplicationController

  def new
    #access users and players to create a team
    @players = Player.all
    @teams = Team.all
    @user = User.all

    @team_1 = @user[-2]
    @team_2 = @user[-1]


    # @player_2 =  Player.new
  end

  # def create
  #   @team_1 Team.create()
  #   @team_2 Team.create
  # end








end
