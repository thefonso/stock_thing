class Stock
  
  attr_accessor :name, :observers
  
  def initialize(name)
    @name = name
    @observers = []
  end
  
  def generate_price
    range = Random.new
    precise_price = range.rand(1.0...1000.0)
    formated_price = (precise_price * 100).to_i / 100.0
  end
  

end