feature 'Enter player names' do
  scenario 'Can enter names and see them' do
    visit('/')
    fill_in :player_1, with: 'User1'
    fill_in :player_2, with: 'User2'
    click_button 'Enter Arena'
    expect(page).to have_content 'User1 vs User2'
  end
end
