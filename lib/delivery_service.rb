class DeliveryService
  attr_accessor :delivery_confirmed, :distance, :weight

  def initialize(weight, distance)
    @weight = weight
    @distance = distance
    @delivery_confirmed = false
    @park = []
    @park << Car.new(5, 'xxx', true) << Car.new(4, 'xxx1', true)
    @park << Bike.new(3, true) << Bike.new(5, true)
  end

  def choose_transport_type
    @park.find { |x| x.available? && weight <= x.max_weight }
  end

  def confirm_delivery
    puts 'Confirm delivery? Enter only Y/N'
    string = gets.chomp
    if string.upcase == 'Y'
      @delivery_confirmed = true
      puts 'Delivery confirmed'
    elsif string.upcase == 'N'
      puts 'Delivery declined'
    else
      puts 'Please, enter only Y or N'
    end
  end
end
