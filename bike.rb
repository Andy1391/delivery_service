class Bike < Transport

  attr_accessor :max_distance

  def initialize
    @max_weight = 10
    @speed = 10
    @max_distance = 30
  end
  
end