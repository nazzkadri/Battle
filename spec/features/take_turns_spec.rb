# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

# let(:game) { Game.new(player_one, player_two) }
# let(:player_one) { double :player_one }
# let(:player_two) { double :player_two }

feature 'switch turns' do
  let(:game) { Game.new(player_one, player_two) }
  let(:player_one) { double :player_one }
  let(:player_two) { double :player_two }
  scenario 'player 1 switches turns with player 2' do
    sign_in_and_play
    game.current_player = game.player_1
    click_button ('Attack')
    click_link ('Ok')
    game.switch
    expect(game.current_player).to eq game.player_2
  end
end
