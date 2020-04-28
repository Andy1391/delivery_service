class Bike < Transport
  attr_reader :max_distance, :max_weight, :speed

  @@bikes = []

  BIKE_MAX_WEIGHT = 10
  BIKE_MAX_DISTANCE = 30
  BIKE_DELIVERY_COST = 3
  ALL_BIKE_ATRIBUTES = %w[package_weight available location number_of_deliveries delivery_cost]

  def initialize(package_weight, is_available)
    @max_weight = BIKE_MAX_WEIGHT
    @speed = 10
    @max_distance = BIKE_MAX_DISTANCE
    @package_weight = package_weight
    @available = is_available
    @delivery_cost = BIKE_DELIVERY_COST
    @location = 'In garage'
    @number_of_deliveries = 0
    @@bikes << self
  end

  def self.all
    @@bikes.size
  end

   ALL_BIKE_ATRIBUTES.each do |i|
    define_singleton_method("find_by_#{i}".to_sym) do |value|
      @@bikes.find { |bike| bike.send(i) == value }
    end
  end
end
