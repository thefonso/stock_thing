require 'stock'

class StockMarket1to1
  attr_reader :stocks
  
  def initialize(stock_array)
    @stocks = []  
    stock_array.each do |stock_name|
      createstock(stock_name)
      register_ticker(@stocks.last)
    end
  end
 
  def createstock(stock)
      @stocks << Stock.new(stock)
  end
  
  def register_ticker(stock)
      stock.register_observer(stock.name)
  end
  
  def notify
    
  end
end