feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'The Hulk vs. Alex Black-Roberts'
  end
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Alex Black-Roberts: 60HP'
  end
end
