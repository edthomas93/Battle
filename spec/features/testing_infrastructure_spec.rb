feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'The Hulk'
    fill_in :player_2_name, with: 'Alex Black-Roberts'
    click_button 'Submit'
    expect(page).to have_content 'The Hulk vs. Alex Black-Roberts'
  end
end
