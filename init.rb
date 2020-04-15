require_relative "transport"
require_relative "bike"
require_relative "car"
require_relative "delivery_service"

order = DeliveryService.new(5, 5.0)
order2 = DeliveryService.new(9, 55.0)

order.choose_transport_type
order2.choose_transport_type

order.delivery_confirmed?

bike = Bike.new
car = Car.new('AE8046EH')

puts "Delivery time's: '#{bike.delivery_time(order.distance)}' minutes"
puts "Delivery time's: '#{car.delivery_time(order2.distance)}' minutes"