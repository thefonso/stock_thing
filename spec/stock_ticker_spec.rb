require 'stock_ticker'

describe StockTicker do
  
  let (:stockticker) {StockTicker.new("google_ticker")}
  
  it 'should exist' do
    stockticker.should_not be_nil
  end
  
  it "should have name" do
    stockticker.name.should == "google_ticker"
  end
  
  it 'should be able to notify' do
    stockticker.notify_ticker('mages',1000).should_not be_nil
  end
end