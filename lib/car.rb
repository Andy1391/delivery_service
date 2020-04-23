class Car < Transport
  
  attr_reader :speed, :max_weight, :registration_number

  @@cars = []

  CAR_MAX_WEIGHT = 100
  CAR_DELIVERY_COST = 5

  def initialize(package_weight, registration_number, is_available)
    @max_weight = CAR_MAX_WEIGHT
    @speed = 50
    @package_weight = package_weight
    @available = is_available
    @registration_number = registration_number
    @delivery_cost = CAR_DELIVERY_COST
    @location = ['On route', 'In garage']
    @number_of_deliveries = 0
    @@cars << self
  end

  def self.all
    @@cars.size
  end
end
