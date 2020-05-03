require_relative 'dependencies'

bike = Bike.new(5, true)
car = Car.new(7, true, 'xxxx')
car2 = Car.new(9, true, 'xxxx')

p car > car2
p bike == bike
p car2 >= car2

p car.toggle_available!

order = DeliveryService.new(5,29)
p order.choose_transport_type
