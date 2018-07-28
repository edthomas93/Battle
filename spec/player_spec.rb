require 'player'

describe Player do
  subject(:kirt) { Player.new('Kirt') }

  describe '#name' do
    it 'returns the name' do
      expect(subject.name).to eq 'Kirt'
    end
  end
end
