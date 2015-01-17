require 'sinatra/base'
require_relative '../lib/player'
require_relative '../lib/game'
require_relative '../lib/ai'
require_relative '../lib/rock'
require_relative '../lib/paper'
require_relative '../lib/scissors'

class RockPaperScissors < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions

  GAME = Game.new

  get '/' do
    erb :index
  end

  post '/' do
    @player = Player.new
    @player.name = params[:player_name]
    GAME.add_player(@player)
    session[:me] = @player.object_id
    erb :choose_opponent
  end

  get '/ai' do
    @player = GAME.players.select { |player| player.object_id == session[:me] }.first
    @ai = Ai.new(Rock, Paper, Scissors)
    session[:ai] = @ai.object_id
    GAME.add_player(@ai)
    erb :ai
  end

  post '/ai' do
    @player = GAME.players.select { |player| player.object_id == session[:me] }.first
    @ai = GAME.players.select { |player| player.object_id == session[:ai] }.first
    @player.make_selection(eval(params[:user_rps]))
    @ai.make_selection
    erb :ai
  end


  get '/user' do
    @player = GAME.players.select { |player| player.object_id == session[:me] }.first
    erb :user, :layout => :layout_refresh
  end

  post '/user' do
    @player = GAME.players.select { |player| player.object_id == session[:me] }.first
    @opponent = GAME.players.select { |player| player.object_id != session[:me] }.first
    @player.make_selection(eval(params[:user_rps]))
    erb :user
  end

  get '/reset_game' do
    GAME = Game.new
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
