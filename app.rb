require 'sinatra/base'
require 'shotgun'

class Battle < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name]).name
    $player_2 = Player.new(params[:player_2_name]).name
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1
    @player_2_name = $player_2
    erb :play
  end

  get '/attack' do
    @player_1_name = $player_1
    @player_2_name = $player_2
    erb :attack
  end

  run! if app_file == $0
end
