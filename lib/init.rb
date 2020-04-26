require_relative 'dependencies'

order = DeliveryService.new(5, 5.0)
# order2 = DeliveryService.new(9, 55.0)

# p order.choose_transport_type
# p order2.choose_transport_type

# order.confirm_delivery

# bike = Bike.new(111, true)
# car = Car.new(11, 'AA3333EB', true)
p Bike.filter_by_package_weight { |b| b.package_weight > 1}

# puts "Delivery time's: '#{bike.delivery_time(order.distance)}' minutes"
# puts "Delivery time's: '#{car.delivery_time(order2.distance)}' minutes"

# # p Car.filter_by_delivery_cost{ |car| car.delivery_cost > 3}
# 2.times do p car.toggle_location! end