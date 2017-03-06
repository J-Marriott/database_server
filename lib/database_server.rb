require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  enable :sessions

  get '/' do
    'Welcome to the app'
  end

  get '/set' do
    params.each do |key, value|
      session[:hash] = {key => value};
    end
    "#{session[:hash]}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
