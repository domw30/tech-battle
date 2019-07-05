def log_in_to_play
  visit('/')
  fill_in :player_1, with: 'User1'
  fill_in :player_2, with: 'User2'
  click_button 'Enter Arena'
end
