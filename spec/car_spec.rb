require_relative 'spec_helper'

RSpec.describe Car do
  subject(:car) { Car.new(7, true , 'XX11KK') }
  subject(:car2) { Car.new(12, true , 'XX11KK') }
  subject(:bike) { Bike.new(1, false) }

  describe '#<=>' do
    context 'compares car delivery speed' do
      it { expect(bike < car).to be false }      
    end

    context 'compares cars delivery speed' do      
      it { expect(car == car2).to be true }
    end
  end

  describe '#delivery_time' do
    context 'check car delivery time' do
      order = DeliveryService.new(5, 100)
      it { expect(car.delivery_time(order.distance)).to eq(120) }
    end
  end
end
 