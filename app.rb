require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one = params[:player_1_name]
    @player_two = params[:player_2_name]
    erb(:play)
  end

# start the server if ruby file executed directly
  run! if app_file == $0
end