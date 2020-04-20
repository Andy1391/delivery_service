require_relative "dependencies"

p Bike.new(2,false) > Car.new(3,true,'xxxx')
p Bike.new(7,false) == Car.new(7,true,'xxxx')

bike = Bike.new(5,true)
car = Car.new(7,true,'xxxx')
car2 = Car.new(9,true,'xxxx')

p car.between?(bike,car2)
