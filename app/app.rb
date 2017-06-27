
require 'sinatra/base'
require_relative './models/link.rb'

class App < Sinatra::Base

  enable :sessions

  configure do
    # Don't log them. We'll do that ourself
    set :dump_errors, false

    # Don't capture any errors. Throw them up the stack
    set :raise_errors, true

    # Disable internal middleware for presenting errors
    # as useful HTML pages
    set :show_exceptions, false
  end

  #set :views, Proc.new{File.join(root, "..", "views")}

  get '/' do

  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  run! if app_file == $0

end
