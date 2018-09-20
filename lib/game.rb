
class Game
  attr_reader :player_1, :player_2
  attr_accessor :current_player

  def initialize(player1 = Player.new, player2 = Player.new)
    @player_1 = player1
    @player_2 = player2
    @current_player = player1
  end

  def attack(player1, player2)
    player2.reduce_points
  end

  def switch
    if @current_player == @player_1
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end
end
