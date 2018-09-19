feature 'Attack player and get confirmation' do
  scenario 'player 1 is attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content('Bob attacks Sam')
  end
end
