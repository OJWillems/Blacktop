class User < ApplicationRecord

  has_many :teams

  def make_pick(player, team)
    player.update(team_id: team)
    self.budget -= player.price
  end

end
