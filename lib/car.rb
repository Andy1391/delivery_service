class Car < Transport
  attr_reader :speed, :max_weight, :registration_number

  @@cars = []

  CAR_MAX_WEIGHT = 100
  CAR_DELIVERY_COST = 5
  ALL_CAR_ATRIBUTES = %w[package_weight available location number_of_deliveries delivery_cost].freeze

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

  ALL_CAR_ATRIBUTES.each do |i|
    define_singleton_method("find_by_#{i}".to_sym) do |value|
      @@cars.find { |car| car.send(i) == value }
    end
  end

  ALL_CAR_ATRIBUTES.each do |i|
    define_singleton_method("filter_by_#{i}".to_sym) do |&block|
      @@cars.select { |car| block.call(car.send(i)) }
    end
  end
end
