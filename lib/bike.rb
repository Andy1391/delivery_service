class Bike < Transport
  attr_reader :max_distance

  BIKE_MAX_WEIGHT = 10
  BIKE_MAX_DISTANCE = 30

  def initialize(package_weight, is_available)
    @max_weight = 10
    @speed = 10
    @max_distance = 30
    @available = is_available
    @package_weight = package_weight
  end
end
