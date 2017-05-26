require 'game'

describe Game do

  subject(:game) {described_class.new}
  let(:jade) { double('Jade', attack:'' ) }
  let(:lubos) { double('Lubos', get_damaged:'') }

  describe '#attack' do
    it "attacks the opponent" do
      expect(lubos).to receive(:get_damaged)
      game.attack(lubos)
    end
  end

end
