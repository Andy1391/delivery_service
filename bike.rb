class Bike < Transport

  attr_reader :max_distance , :max_weight , :speed

  BIKE_MAX_WEIGHT = 10
  BIKE_MAX_DISTANCE = 30

  def initialize(current_weight, is_available)
    @max_weight = BIKE_MAX_WEIGHT
    @speed = 10
    @max_distance = BIKE_MAX_DISTANCE      
    @current_weight = current_weight  
    @available = is_available
  end  

    def available?
      if @weight <= Bike::BIKE_MAX_WEIGHT && @distance <= Bike::BIKE_MAX_DISTANCE     
        super
      else
        false
      end
    end
end
