class SportTeam

  attr_reader :name, :players
  attr_accessor :coach, :points

  def initialize(name,players,coach)
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_team_player(new_player)
    @players << new_player
  end

  def check_player_in(player)
    return @players.include?(player)
  end

def update_points(outcome)
  if outcome.downcase == "win"
    @points += 3
  end 
end


end
