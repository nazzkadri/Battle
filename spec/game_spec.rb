require 'game'

describe Game do
  let(:game) { described_class.new(player_one, player_two) }
  #it { is_expected.to respond_to(:attack).with(1).argument }
  let(:player_one) { double :player_one }
  #let(:current_player) { double :current_player }
  let(:player_two) { double :player_two, :reduce_points => 50 }

  describe '#player_one' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_one
    end
  end

  describe '#player_two' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_two
    end
  end

  describe "#attack" do
    it "player 1 attacks player 2" do
      game.attack(player_one, player_two)
      expect(player_two).to receive(:reduce_points).and_return(50)
      player_two.reduce_points
    end
  end

  describe "#switch" do
    it "switches the role from player 1 to player 2" do
      game.current_player = game.player_1
      game.switch
      expect(game.current_player).to eq game.player_2
    end

    it "switches the role from player 2 to player 1" do
      game.current_player = game.player_2
      game.switch
      expect(game.current_player).to eq game.player_1
    end
  end


end
