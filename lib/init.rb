require_relative 'dependencies'

order = DeliveryService.new(5, 5.0)

p Bike.filter_by_number_of_deliveries { |x| x < 2 }
