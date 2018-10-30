require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @pig = PigLatinizer.new(params[:sentence])
    @piggy = @pig.pigify

    erb :piglatinize
  end

end #class App
