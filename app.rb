require 'sinatra'
require 'shotgun'

class Birthday < Sinatra::Base
get '/' do
  erb(:index)
end

post '/greeting' do
  @name = params[:name]
  erb(:greeting)
end
end
