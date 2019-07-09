feature 'Attack Player' do
  scenario 'Can attack player 2 and display confirmation' do
    log_in_to_play
    click_button 'Attack'
    expect(page).to have_content 'User1 attacked User2'
  end

  scenario 'Can attack player 1 and display confirmation' do
    log_in_to_play
    attack_and_confirm
    click_button 'Attack'
    expect(page).to have_content 'User2 attacked User1'
  end

  scenario 'reduce player 2 HP by 10' do
    log_in_to_play
    attack_and_confirm
    expect(page).not_to have_content 'User2 HP: 100'
    expect(page).to have_content 'User2 HP: 90'
  end

  scenario 'reduce player 1 HP by 10' do
    log_in_to_play
    attack_and_confirm
    attack_and_confirm
    expect(page).not_to have_content 'User1 HP: 100'
    expect(page).to have_content 'User1 HP: 90'
  end
end
