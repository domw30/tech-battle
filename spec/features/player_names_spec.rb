feature 'Enter player names' do
  scenario 'Can enter names and see them' do
    log_in_to_play
    expect(page).to have_content 'User1 vs User2'
  end
end
