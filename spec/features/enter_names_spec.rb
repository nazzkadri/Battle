#require 'app.rb'

# feature 'Testing framework' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, :with => "Bob"
    fill_in :player_2_name, :with => "Sam"
    click_button 'Submit'
    expect(page).to have_content 'Bob vs. Sam'
  end
end
