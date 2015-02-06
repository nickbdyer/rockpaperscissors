class RockPaperScissors < Sinatra::Base

  before '/ai' do
    @player = GAME.players.select { |player| player.object_id == session[:me] }.first
    @ai = GAME.players.select { |player| player.object_id == session[:ai] }.first
  end

  get '/ai' do
    @ai = Ai.new(Rock, Paper, Scissors)
    session[:ai] = @ai.object_id
    GAME.add_player(@ai)
    erb :ai
  end

  post '/ai' do
    @player.make_selection(params[:user_rps])
    @ai.make_selection
    erb :ai
  end

end
