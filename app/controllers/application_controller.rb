class RockPaperScissors < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "..", "public") }
  set :views , Proc.new { File.join(root, "..", "views") }

  enable :sessions

  get '/reset_game' do
    GAME = Game.new
  end

  run! if app_file == $0
end
