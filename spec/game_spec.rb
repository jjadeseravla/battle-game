require 'game'

describe Game do

  let(:jade) { double('Jade', attack:'' ) }
  let(:lubos) { double('Lubos', get_damaged:'') }
  subject(:game) {described_class.new(jade, lubos)}

  describe '#attack' do
    it "Player 1 attacks Player 2" do
      expect(lubos).to receive(:get_damaged)
      game.attack(lubos)
    end
  end

  describe '#attack' do
    it "Player 2 attacks Player 1" do
      expect(jade).to receive(:get_damaged)
      game.attack(jade)
    end
  end

  describe '#current_turn' do
    it "gives us the name of player's turn" do
      expect(game.current_turn).to eq jade
    end
  end

  describe '#switch_turn' do
    it "after first attack, switch to opponent" do
      game.switch_turn
      expect(game.current_turn).to eq lubos
    end
  end

end
