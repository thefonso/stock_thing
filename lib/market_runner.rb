require_relative 'stock'
require_relative 'notifier'
require_relative 'stock_market'
require_relative 'ticker'

class MarketRunner < Notifier
  
  attr_reader :stock_array, :observers
  
  def initialize
    @stock_array = []
    @observers = []
    @stockmarket = StockMarket.new
  end
    
  def createstocks
    100.times do 
      @stock_array << Stock.new((0...4).map{65.+(rand(26)).chr}.join)
    end
    return @stock_array
  end
  
  def register_with_stocks
    @stock_array.each do |stock|
      stock.register_observer(@stockmarket)
    end
  end
  
  def createtickers
    100.times do
      @observers << Ticker.new((0...8).map{65.+(rand(26)).chr}.join)
    end
  end
end

test = MarketRunner.new
test.createtickers
test.createstocks
test.register_with_stocks
test.stock_array.each do |stock|
  stock.update_price
end