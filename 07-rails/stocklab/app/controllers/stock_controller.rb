class StockController < ApplicationController

  def landing
  end

  def quote
    if params[:symbol].present?
      @symbol = params[:symbol].upcase
      info = YahooFinance::get_quotes(YahooFinance::StandardQuote, @symbol)
      @price = info[@symbol].lastTrade if info
    end

    render :landing
  end

end
