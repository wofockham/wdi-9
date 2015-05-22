require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  @symbol = params[:stock_symbol]
  if @symbol
    stock_data = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)[@symbol]
    @last_trade = stock_data.lastTrade if stock_data
  end

  erb :stock
end
