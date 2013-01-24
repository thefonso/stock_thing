require 'stock_market_1to1'

describe StockMarket1to1 do
  let (:stockmarket)  {StockMarket1to1.new(['hello', 'world', 'foo', 'bar', '8thlight'])}
  it 'should be able to register 5 observers' do
    stockmarket.stocks.count.should == 5
    stockmarket.stocks.first.class.should == Stock
  end
  
  it 'should be able to register tickers to observers' do
    stockmarket.register_ticker(Stock.new("googles"))
  end
  
  it 'should notify for each stock in array' do
    
  end
end