class Car < Transport

  attr_accessor :registration_number
  attr_reader   :speed , :max_weight 

  CAR_MAX_WEIGHT = 100

  def initialize(current_weight , registration_number, is_available)  	
  	@max_weight = CAR_MAX_WEIGHT
    @speed = 50
    @current_weight = current_weight    
    @current_weight = current_weight 
    @available = is_available
    @registration_number = registration_number 
  end
end
