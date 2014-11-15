require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  set :public_folder, Proc.new { File.join(root, "..", "public") }
  enable :sessions

  get '/' do
    erb :index
  end

  post '/' do
    erb :choose_opponent
  end

  get '/ai' do
    erb :ai
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
