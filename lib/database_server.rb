require 'sinatra/base'

class DatabaseServer < Sinatra::Base

  get '/' do
    'First get route defined'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
