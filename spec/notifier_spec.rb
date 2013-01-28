require_relative "notifier"
require_relative "ticker"

describe "notifier" do
  
  let (:stock) {Stock.new("8thLight")}
  let (:ticker) {Ticker.new("AAA")}
  
  it 'should be able to register an observer' do
    stock.register_observer(ticker)
    stock.observers.should include(ticker)
  end
  
  it 'should be able to unregister an observer' do
    stock.register_observer(ticker)
    stock.observers.should include(ticker)
    stock.unregister_observer(ticker)  
    stock.observers.should be_empty
  end
  
  it 'should notify an observer' do
    stock.register_observer(ticker)
    stock.notify('cool', 5.00).should be_true
  end
end