require_relative 'config/environment'


class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        @user_words = params[:user_phrase]
        @piglatinizer = PigLatinizer.new
        @piglatinized = @piglatinizer.piglatinize(@user_words)
        # binding.pry
        # put 's'
        erb :results
    end
end