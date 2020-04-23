class Bike < Transport

  attr_reader :max_distance, :max_weight, :speed

  @@bikes = []

  BIKE_MAX_WEIGHT = 10
  BIKE_MAX_DISTANCE = 30
  BIKE_DELIVERY_COST = 3

  def initialize(package_weight, is_available)
    @max_weight = BIKE_MAX_WEIGHT
    @speed = 10
    @max_distance = BIKE_MAX_DISTANCE
    @package_weight = package_weight
    @available = is_available
    @delivery_cost = BIKE_DELIVERY_COST
    @location = ['On route', 'In garage']
    @number_of_deliveries = 0
    @@bikes << self
  end

  def self.all
    @@bikes.size
  end
end
