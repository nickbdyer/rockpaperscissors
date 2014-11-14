require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions

  get '/' do
    'Hello RockPaperScissors!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
