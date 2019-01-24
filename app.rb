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

post '/countdown' do
  @day = params[:day]
  @month = params[:month]
  @CD_date = Time.new(@month,@day)
  @now = Time.new;
  #@countdown = (@CD_date - @now)/(3600*24)
  erb(:countdown)
end

end
