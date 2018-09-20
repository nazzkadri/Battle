#require 'web_helpers.rb'

feature "Player 1 can see player 2's hit points" do
  scenario "showing player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Sam: 60HP'
  end
end

# As Player 1,
# So I can see how close I am to losing,
# I want to see my own hit points

feature "players can see their own HP points" do
  scenario "player 1 can see his own hit points" do
    sign_in_and_play
    expect(page).to have_content 'Bob: 60HP'
  end
end


# describe 'Switch turns' do
#   context 'seeing the current turn' do
#     scenario 'at the start of the game' do
#       sign_in_and_play
#       expect(page).to have_content "Bob's turn"
#     end
#
#     scenario 'after player 1 attacks' do
#       sign_in_and_play
#       click_button 'Attack'
#       click_link 'OK'
#       expect(page).not_to have_content "Sam's turn"
#       expect(page).to have_content "Bob's turn"
#     end
#   end
# end
