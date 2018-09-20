feature 'Attack player and get confirmation' do
  scenario "player 1 is attacking player 2 should reduce player 2's points by 10" do
    sign_in_and_play
    click_link ('Attack')
    expect(page).to have_content("Sam's points are now: 30HP")
  end
end
