describe Game do
  subject(:game) { Game.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

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
end
