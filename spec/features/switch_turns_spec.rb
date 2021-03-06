feature 'Player 1 attacks player 2' do
  scenario 'allows player 1 attacks player 2' do
    sign_in_and_play
    expect($game.switch_turn.name).to eq 'Lubos'
  end
end

feature 'to see current turn' do
  scenario 'player 1 turn' do
    sign_in_and_play
    expect(page).to have_content "Jade's turn"
  end
end

feature 'after first attack, the turn should switch' do
  scenario "player 2 turn" do
    sign_in_and_play
    click_button 'Attack'
    click_button 'back to play'
    expect(page).not_to have_content "Jade's turn"
    expect(page).to have_content "Lubos's turn"
  end
end
