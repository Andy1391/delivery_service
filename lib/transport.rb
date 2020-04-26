class Transport
  include Comparable
  include Enumerable

  attr_reader :package_weight, :available, :location, :number_of_deliveries, :delivery_cost

  CONVERT_TO_MINUTES = 60

  def initialize
    raise NotImplementedError
  end

  def toggle_available!
    available = !available
  end

  def available?
    available == true
  end

  def delivery_time(distance)
    (distance / @speed) * CONVERT_TO_MINUTES
  end

  def toggle_location!
    if location == 'In garage'
      location = 'On route'
    else
      location = 'In garage'
    end
  end
end
