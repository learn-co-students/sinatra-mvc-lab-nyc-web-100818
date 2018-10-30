require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do 
        erb :user_input
    end

    post '/piglatinize' do
        words = PigLatinizer.new #1st one passed in model and creates ... let!(:words) { PigLatinizer.new }
        @pig_latinized = words.piglatinize(params[:user_phrase]) #2nd this is used in pig_latinized.erb for output result ... (words.piglatinize("i love programming")) 
        erb :pig_latinized
    end
end

# :user_phrase == the phrase inputed from :user_input.erb