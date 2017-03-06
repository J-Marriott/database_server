require 'sinatra/base'

class DatabaseServer < Sinatra::Base
  enable :sessions
  set :cache, {}

  get '/' do
    'Welcome to the app'
  end

  get '/set' do
    params.each {|key, value| DatabaseServer.cache[key] = value}
    "#{DatabaseServer.cache}"
  end

  get '/get' do
    "#{DatabaseServer.cache["#{params["key"]}"]}"
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
