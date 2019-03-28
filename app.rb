require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item]
    params.each do |key, value|
      session[key]=value
    end
    erb :checkout
  end

end
