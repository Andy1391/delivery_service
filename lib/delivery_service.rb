class DeliveryService
  attr_accessor :delivery_confirmed, :distance, :weight

  def initialize(weight, distance)
    @weight = weight
    @distance = distance
    @delivery_confirmed = false
    @park = []
    @park << Bike.new(2, true) << Bike.new(3, false)
    @park << Car.new(11, false, 'AE6754HO') << Car.new(13, true, 'AA1122CC')    
  end

  def choose_transport_type
    @park.find { |x| x.available? && weight <= x.max_weight }
  end

  def toggle_confirm_delivery!
    @delivery_confirmed = !@delivery_confirmed
  end
end
