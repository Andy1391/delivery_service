class DeliveryService
  attr_accessor :delivery_confirmed, :distance, :weight

  def initialize(weight, distance, park)
    @weight = weight
    @distance = distance
    @delivery_confirmed = false
    @park = park
  end

  def choose_transport_type
    if distance > Bike::BIKE_MAX_DISTANCE
      @park.find { |x|  x.available? && x.class == Car && weight <= x.max_weight }
    else
      @park.find { |x|  x.available? && weight <= x.max_weight } 
    end
  end

  def toggle_confirm_delivery!
    @delivery_confirmed = !@delivery_confirmed
  end
end
