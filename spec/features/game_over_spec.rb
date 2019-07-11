feature 'Game Over' do
  context 'when player 2 reaches 0 HP first' do
    before do
      log_in_to_play
      18.times { attack_and_confirm }
      click_button 'Attack'
    end

    scenario 'Player 2 loses' do
      expect(page).to have_content 'User2 Loses!'
    end
  end
end
