require 'game'

describe Game do

  let(:jade) { double('Jade', attack:'' ) }
  let(:lubos) { double('Lubos', get_damaged:'') }
  subject(:game) {described_class.new(jade, lubos)}

  describe '#attack' do
    it "attacks the opponent" do
      expect(lubos).to receive(:get_damaged)
      game.attack(lubos)
    end
  end



end
