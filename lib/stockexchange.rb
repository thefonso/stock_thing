require 'stock_market_1to1'
require 'stock'

class StockExchange
  
  attr_reader :stocks
  
  def initialize(stock_array,name,tickers)
    @stocks = []  
    stock_array.each do |stock_name|
      createstock(stock_name)
      register_ticker(@stocks.last)
    end
  end
  
  def create_market(stocks_array,name,tickers_array)
    # awesome stuff
    nyse = StockMarket.new(stocks_array,name,tickers_array)
  end
   
  def createstock(stock)
    @stocks << Stock.new(stock)
  end
    
  def register_ticker(stock)
    stock.register_observer(stock.name)
  end
end