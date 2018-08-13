require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/pl' do

    @data = PigLatinizer.new(params[:user_input])
    erb :pl
  end

end
