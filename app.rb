require 'sinatra/base'
require 'sprockets'
require 'saasler_ui'
require 'sass'

class MyApp < Sinatra::Base
  set :environment, Sprockets::Environment.new

  # append assets paths
  environment.append_path "assets/stylesheets"
  environment.append_path "assets/javascripts"

  get "/assets/*" do
    env["PATH_INFO"].sub!("/assets", "")
    settings.environment.call(env)
  end

  get '/' do
    erb :index
  end
end
