class Transport
  include Comparable
  include Enumerable

  attr_reader :package_weight, :available, :speed, :number_of_deliveries, :delivery_cost, :location

  CONVERT_TO_MINUTES = 60
  LOCATIONS = ['On route', 'In garage'].freeze

  def initialize
    raise NotImplementedError
  end

  def toggle_available!
    @available = !@available
  end

  def available?
    @available
  end

  def delivery_time(distance)
    (distance.to_f / @speed) * CONVERT_TO_MINUTES
  end

  def <=>(other)
    speed.to_f / max_weight <=> other.speed.to_f / other.max_weight
  end

  def location=(location)
    @location = location
    raise NotImplementedError unless LOCATIONS.include?(location)
  end

  def self.find_by_available(value)
    all.find { |transport| transport.available == value }
  end

  def self.filter_by_available(value)
    all.select { |transport| transport.available == value }
  end

  def self.find_by_package_weight(value)
    all.find { |transport| transport.package_weight == value }
  end

  def self.filter_by_package_weight(&block)
    all.select { |transport| block.call(transport.package_weight) }
  end

  def self.find_by_location(value)
    all.find { |transport| transport.location == value }
  end

  def self.filter_by_location(value)
    all.select { |transport| transport.location == value }
  end

  def self.find_by_number_of_deliveries(value)
    all.find { |transport| transport.number_of_deliveries == value }
  end

  def self.filter_by_number_of_deliveries(&block)
    all.select { |transport| block.call(transport.number_of_deliveries) }
  end

  def self.find_by_delivery_cost(value)
    all.find { |transport| transport.delivery_cost == value }
  end

  def self.filter_by_delivery_cost(&block)
    all.select { |transport| block.call(transport.delivery_cost) }
  end
end
