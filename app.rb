require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    @data = PigLatinizer.new(params[:user_input])
    erb :pl
  end

end
