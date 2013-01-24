require 'stock_market_1to1'

describe StockMarket do
  
  let (:stockmarket)  {StockMarket.new("name", [Stock.new], [Ticker.new])}
  
  it 'should be able to register 1 stock' do
    stockmarket.stocks.count.should == 1
    stockmarket.stocks.first.class.should == Stock
  end
  
  it 'should be able to register tickers to observers' do
    stockmarket.register_ticker(Stock.new("googles"))
  end
  
  it 'should notify for each stock in array' do
    
  end
end