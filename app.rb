require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'


class Battle < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    @game = Game.create(player_1, player_2)
    redirect to '/play'
  end

  get '/play' do
    erb :play
  end

  post '/attack' do
    Attack.run(@game.other_player_of(@game.player_move))
    if @game.game_over?
      redirect to '/game-over'
    else
      redirect to '/attack'
    end
  end

  get '/attack' do
    erb :attack
  end

  get '/game-over' do
    erb :game_over
  end

  post '/switch-players' do
    @game.switch_player
    redirect to '/play'
  end

  run! if app_file == $0
end
