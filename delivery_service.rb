class DeliveryService

  attr_accessor :delivery_confirmed, :distance , :weight 

  def initialize(weight, distance)    
    @weight = weight
    @distance = distance
    @delivery_confirmed = false 
    @park = Array.new
    @park << Car.new(rand(9), 'xxx' , true) << Car.new(rand(9), 'xxx1' , false)  
    @park << Bike.new(rand(5), true) << @park << Bike.new(rand(5), false)     
  end 

  def choose_transport_type
    @park.find(&:available?)
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
