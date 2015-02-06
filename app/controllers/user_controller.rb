class RockPaperScissors < Sinatra::Base
  before '/user' do
    @player = GAME.players.select { |player| player.object_id == session[:me] }.first
  end

  get '/user' do
    erb :user, :layout => :layout_refresh
  end

  post '/user' do
    @opponent = GAME.players.select { |player| player.object_id != session[:me] }.first
    @player.make_selection(params[:user_rps])
    erb :user
  end

end
