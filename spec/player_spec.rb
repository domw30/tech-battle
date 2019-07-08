require 'player'

describe Player do
  subject(:user1) { Player.new('User1') }
  subject(:user2) { Player.new('User2') }

  describe '#name' do
    it 'Returns the name of the player' do
      expect(user1.name).to eq 'User1'
    end
  end

  describe '#hp' do
    it 'returns hit points' do
      expect(user1.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { user1.receive_damage }.to change { user1.hp }.by(-10)
    end
  end
end
