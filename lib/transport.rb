class Transport

  include Comparable

  attr_accessor :current_weight , :available

  CONVERT_TO_MINUTES = 60 

  def initialize(current_weight , is_available)
    @current_weight = current_weight
    @available = is_available
  end
  
  def max_weight
    raise NotImplementedError
  end

  def max_weight=(value)
    raise NotImplementedError
  end

  def speed
    raise NotImplementedError
  end

  def speed=(value)
    raise NotImplementedError
  end

  def delivery_time(distance)    
    return (distance / @speed) * CONVERT_TO_MINUTES 
  end

  def <=> (other)
    self.current_weight <=> other.current_weight
  end
end
