require_relative 'notifier'
require_relative 'stock'
require_relative 'stock_market'
require_relative 'ticker'

describe StockMarket do
  let (:stockmarket) {StockMarket.new}
  let (:ticker) {Ticker.new("AAA")}
  
  it 'should be able to register an observer' do
    stockmarket.register_observer(ticker)
    stockmarket.observers.should include(ticker)
  end
  
  it 'should be able to unregister an observer' do
    stockmarket.register_observer(ticker)
    stockmarket.observers.should include(ticker)
    stockmarket.unregister_observer(ticker)  
    stockmarket.observers.should be_empty
  end
  
  it 'should notify an observer' do
    stockmarket.register_observer(ticker)
    stockmarket.notify("mages",9000.0).should be_true
  end
end