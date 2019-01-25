require 'sinatra'
require 'shotgun'

class Birthday < Sinatra::Base
get '/' do
  erb(:index)
end

post '/countdown' do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  @now = Time.new;
  @countdown_date = Time.new(2019,@month,@day)
  @countdown = (@countdown_date - @now)/(60*60*24)
  if @countdown < 0
    @countdown += 365
  end
    erb(:greeting)
end

end
