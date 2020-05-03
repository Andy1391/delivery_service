class Transport
  include Comparable
  include Enumerable

  attr_reader :package_weight, :speed, :available, :max_weight  

  CONVERT_TO_MINUTES = 60

  def initialize
    raise NotImplementedError
  end

  def toggle_available!
    @available = !@available
  end

  def available?
    @available == true
  end

  def delivery_time(distance)
    (distance.to_f / @speed) * CONVERT_TO_MINUTES
  end

  def <=>(other)
    speed.to_f / max_weight <=> other.speed.to_f / other.max_weight
  end
end
