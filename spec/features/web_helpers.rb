def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'The Hulk'
  fill_in :player_2_name, with: 'Alex Black-Roberts'
  click_button 'Submit'
end
