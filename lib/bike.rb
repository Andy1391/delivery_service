class Bike < Transport
  attr_reader :max_distance, :max_weight

  @@bikes = []

  BIKE_MAX_WEIGHT = 10
  BIKE_MAX_DISTANCE = 30
  BIKE_DELIVERY_COST = 3

  def initialize(package_weight, location)
    @max_weight = BIKE_MAX_WEIGHT
    @speed = 10
    @max_distance = BIKE_MAX_DISTANCE
    @package_weight = package_weight
    @available = true
    @delivery_cost = BIKE_DELIVERY_COST
    self.location = location
    @number_of_deliveries = 0
    @@bikes << self
  end

  def available?(distance, weight)
    super() && distance <= @max_distance && weight <= @max_weight
  end

  def confirmed(delivery_confirmed)
    if delivery_confirmed
      @number_of_deliveries += 1
    else
      return if @number_of_deliveries.zero?

      @number_of_deliveries -= 1
    end
  end

  def self.all
    @@bikes
  end
end
