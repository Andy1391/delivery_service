class Transport

  CONVERT_TO_MINUTES = 60

  attr_accessor :max_weight, :speed, :available

  def initialize(max_weight, speed, available)
    @max_weight = max_weight
    @speed = speed
    @available = available
  end

  def delivery_time(distance)
    @time = distance / @speed 
    return @time * CONVERT_TO_MINUTES 
  end

end