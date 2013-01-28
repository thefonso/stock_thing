class StockMarket < Notifier
  
  attr_accessor :observers
  
  def initialize
    @observers = []
  end
  
  def notify(name, price)
    p "#{name} - #{price}"
  end
end