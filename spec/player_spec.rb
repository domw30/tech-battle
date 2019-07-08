require 'player'

describe Player do
  subject(:user1) { Player.new('User1') }
  subject(:user2) { Player.new('User2') }

  describe '#name' do
    it 'Returns the name of the player' do
      expect(user1.name).to eq 'User1'
    end
  end

  describe '#hit_points' do
    it 'returns hit points' do
      expect(user1.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(user2).to receive(:receive_damage)
      user1.attack(user2)
    end
  end
end
