class DeliveryService
  attr_accessor :delivery_confirmed
  attr_reader :distance, :weight

  def initialize(weight, distance, park)
    @weight = weight
    @distance = distance
    @delivery_confirmed = false
    @park = park
  end

  def choose_transport_type
    @park.find do |x|
      if x.class == Bike
        x.available?(distance, weight)
      else
        x.available?(weight)
      end
    end
  end

  def toggle_confirm_delivery!
    @delivery_confirmed = !@delivery_confirmed
    choose_transport_type.confirmed(delivery_confirmed)
  end
end
