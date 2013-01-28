require_relative 'notifier'
class Stock < Notifier

  attr_accessor :name, :observers, :price
  
  def initialize(name)
    @name = name
    @observers = []
  end
  
  def generate_price
    range = Random.new
    precise_price = range.rand(1.0...1000.0)
    @price = (precise_price * 100).to_i / 100.0
  end
  
  def update_price
        generate_price
        notify(self.name, self.price)
        sleep 1
  end

end