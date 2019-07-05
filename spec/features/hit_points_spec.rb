feature 'View Player 2 HP' do
  scenario 'Can see HP for Player 2' do
    log_in_to_play
    expect(page).to have_content 'User2 HP: 100'
  end
end

feature 'View Player 1 HP' do
  scenario 'Can see HP for Player 1' do
    log_in_to_play
    expect(page).to have_content 'User1 HP: 100'
  end
end
