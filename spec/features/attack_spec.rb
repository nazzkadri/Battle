feature 'Attack player and get confirmation' do
  scenario "player 1 is attacking player 2 should reduce player 2's points by 10" do
    sign_in_and_play
    click_button ('Attack')
    click_link ('Ok')
    expect(page).to have_content("Sam's points are now: 50HP")
  end
end

# As Player 1,
# So I can lose a game of Battle,
# I want Player 2 to attack me, and I want to get a confirmation

# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP

# feature 'Attack player and get confirmation' do
#   scenario "player 2 is attacking player 2 should reduce player 1's points by 10" do
#     sign_in_and_play
#     click_button ('Attack')
#     click_link ('Ok')
#     expect(page).to have_content("Bob's points are now: 50HP")
#   end
# end
