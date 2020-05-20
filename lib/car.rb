class Car < Transport
  attr_accessor :registration_number, :max_weight

  @@cars = []

  CAR_MAX_WEIGHT = 100
  CAR_DELIVERY_COST = 5

  def initialize(package_weight, registration_number, location)
    @max_weight = CAR_MAX_WEIGHT
    @speed = 50
    @package_weight = package_weight
    @available = true
    @registration_number = registration_number
    @delivery_cost = CAR_DELIVERY_COST
    self.location = location
    @number_of_deliveries = 0
    @@cars << self
  end

  def available?(weight)
    super() && weight <= @max_weight
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
    @@cars
  end
end
