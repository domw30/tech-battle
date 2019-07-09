class Game

  attr_reader :player_move

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @player_move = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_player
    @player_move = other_player_of(player_move)
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  private

  def other_player_of(the_player)
    @players.select { |player| player != the_player }.first
  end
  
end
