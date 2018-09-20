
class Player
attr_reader :player_name, :points
DEFAULT_HIT_POINTS = 60

  def initialize(name, points = DEFAULT_HIT_POINTS)
    @player_name = name
    @points = points
  end

  def display_name
     @player_name
  end

  def reduce_points
    @points -= 10
  end

end
