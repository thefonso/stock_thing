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
  
  it 'should be able to register an observer' do
    stock.register_observer(stockmarket)
    stock.observers.should include(stockmarket)
  end
  
  it 'should be able to unregister an observer' do
    stock.register_observer(stockmarket)
    stock.observers.should include(stockmarket)
    stock.unregister_observer(stockmarket)  
    stock.observers.should be_empty
  end
  
  it 'should notify an observer' do
    stock.register_observer(stockmarket)
    stock.notify.should be_true
  end
end