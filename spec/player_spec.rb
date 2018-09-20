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

  describe "reduces player's points after player is attacked" do
    it "reduces point by 10 after player is attacked" do
      player_1 = Player.new("Bob")
      player_2 = Player.new("Sam")
      expect { player_2.reduce_points }.to change { player_2.points }.by -10
      #expect(player_1.points).to eq 30
    end
  end

end
