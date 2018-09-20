
class Player
attr_reader :player_name, :points

  def initialize(name)
    @player_name = name
    @points = 40
  end

  def display_name
     @player_name
  end

  def reduce_points
    @points -= 10
  end

end
