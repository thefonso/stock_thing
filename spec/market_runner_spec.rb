require_relative 'market_runner'
require_relative 'stock'
require_relative 'stock_market'
require_relative 'notifier'

describe MarketRunner do
  let (:marketrunner) {MarketRunner.new}
  it 'should create 100 stocks' do
    stocks_array = marketrunner.createstocks
    stocks_array.count.should == 100
  end
  
  it 'should register the stock market with each stock' do
    marketrunner.createstocks
    marketrunner.register_with_stocks
    marketrunner.stock_array.first.observers.count.should == 1
  end
  
  it 'should create 100 tickers' do
    marketrunner.createtickers
    marketrunner.observers.count.should == 100
  end
  
  
end