require 'sinatra'
require 'sinatra/reloader'
require 'httparty'



# require 'pry'

get '/' do             # like event handlers 
	erb :lookup
end
 


get '/lookup' do 
@title = params[:movietitle]
url = "http://omdbapi.com/?t=#{ @title }"
 movie_info = HTTParty.get url
  @poster = movie_info['Poster']
	@poster = @result
  	erb :lookup
end


# get '/lookup' do  # look up of stock happens here   # like event handlers
	
#     @stock_symbol =  params[:stocksymbol]
#     info = YahooFinance.get_quotes YahooFinance::StandardQuote, @stock_symbol 
#     # @ symbols only needed when you need to view 
# 	 @price = info[@stock_symbol].lastTrade 

# 	@result = @price 

# 	erb :lookup
# end




