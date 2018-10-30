require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do

    user_text = params[:word]
    instance = PigLatinizer.new
    @pigged = instance.piglatinize(user_text)
    erb :result
    resp.status  = 200
  end

end
