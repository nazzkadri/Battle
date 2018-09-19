#require 'web_helpers.rb'

feature "Player 1 can see player 2's hit points" do
  scenario "showing player 2's hit points" do
    sign_in_and_play
    expect(page).to have_content 'Sam: 40HP'
  end

end
