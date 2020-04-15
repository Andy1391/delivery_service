class Car < Transport

  attr_accessor :registration_number

  def initialize(registration_number)
    @max_weight = 100
    @speed = 50
    @registration_number = registration_number
  end

end