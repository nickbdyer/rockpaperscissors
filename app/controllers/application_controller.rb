class RockPaperScissors < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "..", "public") }
  set :views , Proc.new { File.join(root, "..", "views") }

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

  get '/reset_game' do
    GAME = Game.new
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
