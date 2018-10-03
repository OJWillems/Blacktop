class Game < ApplicationRecord

  has_many :teams

  # decide which team gets back first
    #could do a tip-off here which is 50/50 probability

  def tip_off
    @team_1 = Team.all[-2]
    @team_2 = Team.all[-1]
    @teams = [@team_1, @team_2]
    @teams.sample
  end

  def game_sequence(tip_off)
    @possesion = tip_off

    #set teams for reference

    #sort players by overall rating
    @team_1_players_sort = Team.all[-2].players.sort_by do |player|
      player.overall_rating
    end.reverse

    #sort players by overall rating
    @team_2_players_sort = Team.all[-1].players.sort_by do |player|
      player.overall_rating
    end.reverse

    #player 1 players
    @team_1_players = @team_1_players_sort.map do |player|
      player.name
    end

    #player 2 players
    @team_2_players = @team_2_players_sort.map do |player|
      player.name
    end

    #order team 1 players by overall rating
    #for now it is now weighted but need to come back to this!
    @team_1_player = @team_1_players.sample

    #order team 2 players by overall rating
    #for now it is now weighted but need to come back to this!
    @team_2_player = @team_2_players.sample

    #see who is on offense or defense

    #select offensive player for shot
    @team_1_players

  end

  #how each possesion work
    #choosing which offensive player will have the ball
      #there will be an array of player on the team with the ball
      #It will be randomly selected who gets the ball to take a shot
      #This will be weighted by the overall-rating of the player, the better they are
      #...the more likely they are to get the ball

    # choosing which defensive player will be guarding on any random possesion
      #there will be an array of the players on the defensive team
      #the higher the overall rating, the more likely that player is to be choosen to play defense
      #It will be weighted the same way

    # Offesne and defensive player match up
      #Each player starts with a certain % chance of making their shot
        # 95 and above off-rating is a 60% of hitting
        # 90-95 off-rating is a 50% of hitting
        # 85-90 off-rating is a 40% of hitting
      #then defense can affect
        # 95 and above def rating hurts shot 15%
        # 90-95 def rating hurts 10%
        # 85-90 def rating hurts 5%
      #depending on if shot hits
        # add to home_score or add to away score

    #change possesion hands

    # we want to iterate through all of this 10 times
    #at the end of the 10th time we want to send a message back to the screen
    #...to update user on the last play and update the score for the players

end
