require_relative 'dependencies'

order = DeliveryService.new(5, 5.0)
order2 = DeliveryService.new(9, 55.0)

p order.choose_transport_type
p order2.choose_transport_type

order.confirm_delivery

bike = Bike.new(111, true)
car = Car.new(11, 'AA3333EB', true)

puts "Delivery time's: '#{bike.delivery_time(order.distance)}' minutes"
puts "Delivery time's: '#{car.delivery_time(order2.distance)}' minutes"
