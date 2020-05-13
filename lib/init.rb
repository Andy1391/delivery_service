require_relative 'dependencies'

park = [Bike.new(1, false), Bike.new(3, true), Car.new(11, true, 'KK8876OO')]

order = DeliveryService.new(1, 31, park)
p order.choose_transport_type
