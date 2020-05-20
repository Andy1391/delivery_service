require_relative 'dependencies'

park = [Bike.new(2, 'On route'), Car.new(1, 'xx', 'On route')]
order = DeliveryService.new(29, 4, park)

p order.toggle_confirm_delivery!
p park

order2 = DeliveryService.new(1, 4, park)
p order2.toggle_confirm_delivery!
p park
