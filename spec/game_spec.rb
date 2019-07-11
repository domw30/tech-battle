describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  subject(:finished_game) { described_class.new(dead_player, player_2) }
  let(:player_1) { double :player, hitpoints: 100 }
  let(:player_2) { double :player, hitpoints: 100 }
  let(:dead_player) { double :player, hitpoints: 0 }

  describe '#player_1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player_2' do
    it 'retrieves the second player' do
      expect(game.player_2).to eq player_2
    end
  end

  describe '#player_move' do
    it 'begins the game as player 1s move' do
      expect(game.player_move).to eq player_1
    end
  end

  describe '#switch_player' do
    it 'switches to the opponent for their move' do
      game.switch_player
      expect(game.player_move).to eq player_2
    end
  end

  describe '#other_player_of' do
    it 'knows the opposite player of #player_move' do
      expect(game.other_player_of(player_1)).to eq player_2
      expect(game.other_player_of(player_2)).to eq player_1
    end
  end

  describe '#game_over?' do
    it 'returns false if no-one is at 0HP' do
      expect(game.game_over?).to be false
    end

    it 'returns true if at least one player is at 0HP' do
      expect(finished_game.game_over?).to be true
    end
  end

  describe '#loser' do
    it 'returns a player on less than 0HP' do
      expect(finished_game.loser).to eq dead_player
    end
  end
end
