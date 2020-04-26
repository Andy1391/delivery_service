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
    @location = 'In garage'
    @number_of_deliveries = 0
    @@cars << self
  end

  def self.all
    @@cars.size
  end

  def self.find_by_available(value)
    @@cars.find { |car| car.available == value }
  end

  def self.filter_by_available(value)
    @@cars.select { |car| car.available == value }
  end

  def self.find_by_package_weight(value)
    @@cars.find { |car| car.package_weight == value }
  end

  def self.filter_by_package_weight(&block)
    @@cars.select(&block)
  end

  def self.find_by_location(value)
    @@cars.find { |car| car.location == value }
  end

  def self.filter_by_location(value)
    @@cars.select { |car| car.location == value }
  end

  def self.find_by_number_of_deliveries(value)
    @@cars.find { |car| car.number_of_deliveries == value }
  end

  def self.filter_by_number_of_deliveries(&block)
    @@cars.select(&block)
  end

  def self.find_by_delivery_cost(value)
    @@cars.find { |car| car.delivery_cost == value }
  end

  def self.filter_by_delivery_cost(&block)
    @@cars.select(&block)
  end
end
