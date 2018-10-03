class TeamsController < ApplicationController

  def team_1
    #access users and players to create a team
    @players = Player.all
    @teams = Team.all

    @team_1 = User.all[-2]


    @unpicked_players = @players.select do |player|
      player.team_id != 1 || player.team_id != 2
    end

  end

  def team_2

    @players = Player.all
    @teams = Team.all

    @team_2 = User.all[-1]

    @unpicked_players = @players.select do |player|
      player.team_id != 1 || player.team_id != 2
    end

  end

end
