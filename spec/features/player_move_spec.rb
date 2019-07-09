feature 'Switch Player Move' do
  context 'highlight the current move' do
    scenario 'at the start of the game' do
      log_in_to_play
      expect(page).to have_content 'User1s Move'
    end

    scenario 'after player 1 takes their move' do
      log_in_to_play
      click_button 'Attack'
      click_button 'Ok'
      expect(page).not_to have_content 'User1s Move'
      expect(page).to have_content 'User2s Move'
    end
  end

  scenario 'after player 2 takes their move' do
    log_in_to_play
    click_button 'Attack'
    click_button 'Ok'
    click_button 'Attack'
    click_button 'Ok'
    expect(page).not_to have_content 'User2s Move'
    expect(page).to have_content 'User1s Move'
  end
end
