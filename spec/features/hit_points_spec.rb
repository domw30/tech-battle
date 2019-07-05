feature 'View Player 2 HP' do
  scenario 'Can see HP for Player 2' do
    visit('/')
    fill_in :player_1, with: 'User1'
    fill_in :player_2, with: 'User2'
    click_button 'Enter Arena'
    expect(page).to have_content 'User2 HP: 100'
  end
end

feature 'View Player 1 HP' do
  scenario 'Can see HP for Player 1' do
    visit('/')
    fill_in :player_1, with: 'User1'
    fill_in :player_2, with: 'User2'
    click_button 'Enter Arena'
    expect(page).to have_content 'User1 HP: 100'
  end
end
