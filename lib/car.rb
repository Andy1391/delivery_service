class Car < Transport
  attr_accessor :registration_number

  CAR_MAX_WEIGHT = 100

  def initialize(package_weight, is_available, registration_number)
    @max_weight = 100
    @speed = 50
    @available = is_available
    @package_weight = package_weight
    @registration_number = registration_number
  end
end
