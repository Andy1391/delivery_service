class DeliveryService 

  attr_accessor :delivery_confirmed, :distance
  
  BIKE_MAX_WEIGHT = 10
  BIKE_MAX_DISTANCE = 30
  CAR_MAX_WEIGHT = 100

  def initialize(weight, distance)
    @weight = weight
    @distance = distance
    @delivery_confirmed = false
  end 

  def choose_transport_type
    if @weight <= BIKE_MAX_WEIGHT && @distance <= BIKE_MAX_DISTANCE
      puts 'Transport for your delivery - Bike'
    elsif @weight <= CAR_MAX_WEIGHT
      puts 'Transport for your delivery - Car'
    else
      puts "Sorry, we can't deliver weight more than 100kg "
    end
  end

  def delivery_confirmed?
    puts "Confirm delivery? Enter only Y/N"
    string = gets.chomp   
    if string.upcase == 'Y' 
      @delivery_confirmed = true
      puts 'Delivery confirmed'
    elsif string.upcase == 'N'      
      puts 'Delivery declined'
    else 
      puts "Please, enter only Y or N"      
    end
  end
end