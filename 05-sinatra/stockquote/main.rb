require 'sinatra'
require 'sinatra/reloader'
require 'yahoofinance'

get '/' do
  symbol = params[:stock_symbol]
  @last_trade = YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade

  erb :stock
end