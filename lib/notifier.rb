class Notifier
  
  def register_observer(observer)
    @observers << observer
  end
  
  def unregister_observer(observer)
    @observers.delete(observer)
  end
  
  def notify(name, price)
    update_price = generate_price
    @observers.each do |observer|
      observer.notify(name, price)
    end
  end
end