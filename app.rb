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
  @now = Time.new;
  @day_now = @now.day
  @month_now = @now.month
  #if @month < @month_now && @day < @day_now
    #@year = @now.year+1
  #else @year = @now.yeare
#  end
  #@countdown_date = Time.new(@year,@month,@day)
  #@countdown = @countdown_date - @now
  erb(:countdown)
end

end
