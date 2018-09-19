
class Player
attr_reader :player_name

  def initialize(name)
    @player_name = name
  end

  def display_name
     @player_name
  end

end
