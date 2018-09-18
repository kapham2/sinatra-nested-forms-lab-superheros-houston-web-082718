require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # 1. Create a route that responds to a GET request at `/`.
    get '/' do
        erb :'index'
    end

    # 1. Create a route that responds to a POST request at `/teams`.
    post '/teams' do
        erb :'team'
    end
end
