require 'player.rb'

describe Player do
  let(:subject) { described_class.new(name)}
  let(:name) {double :name}

  describe "it should return player's name" do
    it 'print name of the player' do
      player = Player.new("Bob")
      expect(player.display_name).to eq "Bob"
    end
  end
end
