require 'sinatra/base'

class Birthday < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/birthday' do
    @name = params[:name]
    @birthday = params[:birthday]
    erb(:birthday)
  end

  run! if app_file == $0

end