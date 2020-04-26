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
    @location = 'In garage'
    @number_of_deliveries = 0
    @@bikes << self
  end

  def self.all
    @@bikes.size
  end

  def self.find_by_available(value)
    @@bikes.find { |bike| bike.available == value }
  end

  def self.filter_by_available(value)
    @@bikes.select { |bike| bike.available == value }
  end

  def self.find_by_package_weight(value)
    @@bikes.find { |bike| bike.package_weight == value }
  end

  def self.filter_by_package_weight(&block)
    @@bikes.select(&block)
  end

  def self.find_by_location(value)
    @@bikes.find { |bike| bike.location == value }
  end

  def self.filter_by_location(value)
    @@bikes.select { |bike| bike.location == value }
  end

  def self.find_by_number_of_deliveries(value)
    @@bikes.find { |bike| bike.number_of_deliveries == value }
  end

  def self.filter_by_number_of_deliveries(&block)
    @@bikes.select(&block)
  end

  def self.find_by_delivery_cost(value)
    @@bikes.find { |bike| bike.delivery_cost == value }
  end

  def self.filter_by_delivery_cost(&block)
    @@bikes.select(&block)
  end
end
