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

# feature 'Attack player and get confirmation' do
#   scenario "player 1 is attacked by player 2 " do
#     sign_in_and_play
#     click_button ('Attack')
#     click_link ('Ok')
#     click_button ('Attack')
#     expect(page).to have_content "Sam attacked Bob"
#   end
# end

# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP
# feature 'Attack player and get confirmation' do
# scenario 'reduce Player 1 HP by 10' do
#      sign_in_and_play
#      click_button 'Attack'
#      click_link 'OK'
#      click_button 'OK'
#      expect(page).not_to have_content 'Mittens: 60HP'
#      expect(page).to have_content 'Mittens: 50HP'
#    end
#  end
