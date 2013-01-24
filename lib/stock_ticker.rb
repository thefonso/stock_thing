class StockTicker
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end

  def notify_ticker(name, price)
    p "#{name} - #{price}"
  end

end