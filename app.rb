require 'sinatra'
require 'shotgun'

class Birthday < Sinatra::Base
enable :sessions
set :session_secret, "this is a secret...."

get '/' do
  erb(:index)
end

post '/birthday' do
  session[:name] = params[:name]
  session[:day] = params[:day]
  session[:month] = params[:month]
  redirect '/greeting'
end

get '/greeting' do
  @name = session[:name]
  @day = session[:day]
  @month = session[:month]
  @now = Time.new;
  @countdown_date = Time.new(2019,@month,@day)
  @countdown = (@countdown_date - @now)/(60*60*24)
  if @countdown < 0
    @countdown += 365
  end
  erb(:greeting)
end

end
