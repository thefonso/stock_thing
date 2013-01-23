require 'stock_ticker'

describe StockTicker do
  let (:stockticker) {StockTicker.new}
  it 'should exist' do
    stockticker.should_not be_nil
  end
  it 'should be able to notify' do
    stockticker.notify('mages',1000).should_not be_nil
  end
end