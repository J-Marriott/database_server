require 'sinatra/base'
require 'yaml'

class DatabaseServer < Sinatra::Base
  enable :sessions
  set :cache, {}

  get '/' do
    load_data
    'Welcome to the app'
  end

  get '/set' do
    params.each { |key, value| DatabaseServer.cache[key] = value }
    DatabaseServer.cache.to_s
  end

  get '/get' do
    DatabaseServer.cache[params['key'].to_s].to_s
  end

  get '/store' do
    save_data
    if DatabaseServer.cache == YAML.load_file('public/data/data.yml')
      "Data Saved"
    else
      "Oh no, something went wrong"
    end
  end

  helpers

  def save_data
    File.write('public/data/data.yml', DatabaseServer.cache.to_yaml)
  end

  def load_data
    DatabaseServer.cache = YAML.load_file('public/data/data.yml')
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
