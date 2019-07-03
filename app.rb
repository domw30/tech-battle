require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'Test Setup'
  end

  run! if app_file == $0
end
