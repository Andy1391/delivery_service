class Transport
  include Comparable
  include Enumerable

  attr_reader :package_weight, :available, :speed, :number_of_deliveries, :delivery_cost, :location

  CONVERT_TO_MINUTES = 60
  LOCATIONS = ['On route', 'In garage'].freeze
  ALL_ATRIBUTES = %w[package_weight available location number_of_deliveries delivery_cost].freeze

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

  ALL_ATRIBUTES.each do |i|
    define_singleton_method("find_by_#{i}".to_sym) do |value|
      all.find { |tr| tr.send(i) == value }
    end
  end

  ALL_ATRIBUTES.each do |i|
    define_singleton_method("filter_by_#{i}".to_sym) do |&block|
      all.select { |tr| block.call(tr.send(i)) }
    end
  end
end
