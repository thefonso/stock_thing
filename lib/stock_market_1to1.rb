# require 'stock'
# # TODO maybe rename this
# 
# class StockMarket
# 
#   attr_accessor :name, :stocks, :observers
# 
#   def initialize(name, stocks, tickers)
#     @name = name
#     @observers = []
#     @stocks = stocks
#     register_tickers(tickers)
#   end
#   
#   def register_tickers(tickers)
#     tickers.each do |ticker|
#       register_observer(ticker)
#     end
#   end
#   
#   def notify(name, price)
#     notify_ticker(name, price)
#   end
#   
#   def register_observer(observer)
#     @observers << observer
#   end
#   
#   def unregister_observer(observer)
#     @observers.delete(observer)
#   end
#   
#   def notify_ticker(name, price)
#     @observers.each do |observer|
#       observer.notify(name, price)
#     end
#   end
# end