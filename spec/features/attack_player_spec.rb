feature 'Attack Player' do
  scenario 'Can attack opponent and display confirmation' do
    log_in_to_play
    click_button 'Attack'
    expect(page).to have_content 'User1 attacked User2'
  end
end
