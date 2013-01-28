require 'stock'
require 'stock_ticker'
describe Stock do
  let (:stock) {Stock.new("8thLight")}
  let (:stockmarket) {StockMarket.new("nyse", [Stock.new("hello")], [Ticker.new("ticker")])}
  
  
  it 'should have a name' do
    stock.name.should == '8thLight'
  end
  
  it 'should generate a price' do
    stock.generate_price.should_not be_nil
  end  
end