require_relative 'ticker'

describe Ticker do
  
  let (:ticker) {Ticker.new("google_ticker")}
  
  it 'should exist' do
    ticker.should_not be_nil
  end
  
  it "should have name" do
    ticker.name.should == "google_ticker"
  end
  
  it 'should be able to notify' do
    ticker.notify('mages',1000).should_not be_nil
  end
end