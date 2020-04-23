class Transport

  include Comparable, Enumerable

  attr_reader :package_weight, :available, :location, :number_of_deliveries, :delivery_cost

  @@transports = []

  CONVERT_TO_MINUTES = 60

  def initialize    
    @@transports << self
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

  def self.all
    @@transports.size
  end

  class << self
    def find_by_available(available)      
    end
  end
end
