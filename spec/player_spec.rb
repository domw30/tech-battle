require 'player'

describe Player do
  subject(:user1) { Player.new('User1') }

  describe '#name' do
    it 'returns the name of the player' do
      expect(user1.name).to eq 'User1'
    end
  end
end
