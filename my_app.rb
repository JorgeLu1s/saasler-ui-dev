require 'sinatra/base'
require 'sprockets'
require 'sass'

class App < Sinatra::Base
  get '/' do
    'Hello world'
  end
end
