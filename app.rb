require "sinatra"

set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "Tech Battle Commence"
end

get '/battle' do
  "time to fight"
end
