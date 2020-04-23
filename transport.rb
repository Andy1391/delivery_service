class Transport

  include Comparable, Enumerable

  attr_reader :current_weight, :available

  CONVERT_TO_MINUTES = 60

  def initialize
    raise NotImplementedError
  end

  def toggle_available
    if available = !available
      available = false
    else
      available = true
    end
  end

  def available?
    available == true
  end

  def delivery_time(distance)
    (distance / @speed) * CONVERT_TO_MINUTES
  end
end
