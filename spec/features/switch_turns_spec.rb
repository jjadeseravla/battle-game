feature 'Player 1 attacks player 2' do
  scenario 'allows player 1 attacks player 2' do
    sign_in_and_play
    expect($game.current_game.name).to eq 'Jade'
  end
end
