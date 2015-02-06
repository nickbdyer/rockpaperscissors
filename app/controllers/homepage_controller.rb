class RockPaperScissors < Sinatra::Base

  GAME = Game.new

  get '/' do
    erb :index
  end

  post '/' do
    add_player_to_game(GAME)
    erb :choose_opponent
  end

end
