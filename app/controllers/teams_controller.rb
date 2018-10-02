class TeamsController < ApplicationController

  def new
    #access users and players to create a team
    @players = Player.all
    @users = User.all
    @game = Game.all

    @player_1 = Player.new
    @player_2 = Player.new
    @player_3 = Player.new
    @player_4 = Player.new
    @player_5 = Player.new
    @player_6 = Player.new
    @player_7 = Player.new
    @player_8 = Player.new
    @player_9 = Player.new
    @player_10 = Player.new

    # @player_2 =  Player.new
  end

  # def create
  #   @team_1 Team.create()
  #   @team_2 Team.create
  # end








end
