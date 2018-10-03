class Game < ApplicationRecord

  has_many :teams

  # decide which team gets back first
    #could do a tip-off here which is 50/50 probability

  def game_sequence

    #set teams for reference
    @team_1 = Team.all[-2]
    @team_2 = Team.all[-1]
    @teams = [@team_1, @team_2]

    #random sample for who starts with possesion
    #can adjust later if there is time
    @possesion = @teams.sample

    13.times do

    #sort players by overall rating
      @team_1_players = Team.all[-2].players.sort_by do |player|
        player.overall_rating
      end.reverse

      #sort players by overall rating
      @team_2_players = Team.all[-1].players.sort_by do |player|
        player.overall_rating
      end.reverse

      #order team 1 players by overall rating
      #for now it is now weighted but need to come back to this!
      @team_1_player = @team_1_players.sample

      #order team 2 players by overall rating
      #for now it is now weighted but need to come back to this!
      @team_2_player = @team_2_players.sample

      #see who is on offense or defense
      if @possesion == @team_1
        #set probability of scoring
        if @team_1_player.off_rating > 95
          @score_probability = 0.60
        elsif @team_1_player.off_rating >= 90 && @team_1_player.off_rating <= 95
          @score_probability = 0.50
        elsif @team_1_player.off_rating < 90
          @score_probability = 0.40
        end
        # set decrease in scoring probability from the defender
        if @team_2_player.def_rating > 95
          @score_probability -= 0.15
        elsif @team_2_player.def_rating >= 90 && @team_2_player.def_rating <= 95
          @score_probability -= 0.10
        elsif @team_2_player.def_rating < 90
          @score_probability -= 0.05
        end

        #check to see if shot hits
        if rand <= @score_probability
          @shot_score = true
        else
          @shot_score = false
        end

        #update the database based on the score
        if @shot_score
          #was it a 2-pointer or a three
          @probability_of_three = 0.15

          if rand <= @probability_of_three
            @points = 3
            @team_1_player.update(points: (@team_1_player.points + 3))
          else
            @points = 2
            @team_1_player.update(points: (@team_1_player.points + 2))
          end

          @current_score = self.home_score
          @new_score = @current_score + @points

          self.update(home_score: @new_score)

          hits = ["We'll see #{@team_1_player.name} on Sports Center later!", "#{@team_1_player.name} goes for the dunk and straight up POSTERIZES #{@team_2_player.name}", "#{@team_1_player.name}, covered by #{@team_2_player.name}, steps back and nails the three!", "#{@team_1_player.name} goes for the layup and it's in!", "#{@team_2_player.name} tried to chase #{@team_1_player.name}, but there was no way he was going to catch him"]
          self.update(game_updates: hits.sample)
          # self.update(game_updates: "Wow, that was a great shot by #{@team_1_player.name}")
        else
          misses = ["Oooohh, close one by #{@team_1_player.name}!", "#{@team_1_player.name} goes for the three aaaaand it hits the rim!", "#{@team_1_player.name} can't be happy with that shot.", "#{@team_1_player.name} had a wide open pass, why'd he take that?", "#{@team_2_player.name} swats it away. #{@team_1_player.name} never stood a chance."]
          self.update(game_updates: misses.sample)
          # self.update(game_updates: "Unfortunately, he hit nothing but air. That's a missed shot!")
        end

      else # this else belongs to the massive if above where it checks which team has possesion

        if @team_2_player.off_rating > 95
          @score_probability = 0.60
        elsif @team_2_player.off_rating >= 90 && @team_2_player.off_rating <= 95
          @score_probability = 0.50
        elsif @team_2_player.off_rating < 90
          @score_probability = 0.40
        end
        # set decrease in scoring probability from the defender
        if @team_1_player.def_rating > 95
          @score_probability -= 0.15
        elsif @team_1_player.def_rating >= 90 && @team_1_player.def_rating <= 95
          @score_probability -= 0.10
        elsif @team_1_player.def_rating < 90
          @score_probability -= 0.05
        end

        #check to see if shot hits
        if rand <= @score_probability
          @shot_score = true
        else
          @shot_score = false
        end

        #update the database based on the score
        if @shot_score
          #was it a 2-pointer or a three
          @probability_of_three = 0.15

          if rand <= @probability_of_three
            @points = 3
            @team_2_player.update(points: (@team_2_player.points + 3))
          else
            @points = 2
            @team_2_player.update(points: (@team_2_player.points + 2))
          end

          @current_score = self.away_score
          @new_score = @current_score + @points

          self.update(away_score: @new_score)

          # self.update(game_updates: "Wow, that was a great shot by #{@team_2_player.name}")
          hits = ["We'll see #{@team_2_player.name} on Sports Center later!", "#{@team_2_player.name} goes for the dunk and straight up POSTERIZES #{@team_1_player.name}", "#{@team_2_player.name}, covered by #{@team_1_player.name}, steps back and nails the three!", "#{@team_2_player.name} goes for the layup and it's in!", "#{@team_1_player.name} tried to chase #{@team_2_player.name}, but there was no way he was going to catch him"]
          self.update(game_updates: hits.sample)
        else
          misses = ["Oooohh, close one by #{@team_2_player.name}!", "#{@team_2_player.name} goes for the three aaaaand it hits the rim!", "#{@team_2_player.name} can't be happy with that shot.", "#{@team_2_player.name} had a wide open pass, why'd he take that?", "Reminds me of Shaq going for threes", "#{@team_2_player.name} swats it away. #{@team_1_player.name} never stood a chance."]
          self.update(game_updates: misses.sample)
          # self.update(game_updates: "Unfortunately, he hit nothing but air. That's a missed shot!")
        end

      end #end of massive if else statement

      #changing possesions
      if @possesion == @team_1
        @possesion = @team_2
      else
        @possesion = @team_1
      end

    end #end of loop

  end #end of game sequence method

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
