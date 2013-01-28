require_relative 'stock'
describe Stock do
  let (:stock) {Stock.new("8thLight")}  
  it 'should have a name' do
    stock.name.should == '8thLight'
  end
  
  it 'should generate a price' do
    stock.generate_price.should_not be_nil
  end
  
  # it "should update it's price every 3 seconds" do
  #   stock.update_price.should_not be_nil
  # end
  
end
