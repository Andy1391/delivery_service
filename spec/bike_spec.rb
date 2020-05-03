require_relative 'spec_helper'

RSpec.describe Bike do
  subject(:bike) { Bike.new(5, false) }
  subject(:bike1) { Bike.new(3, false) }
  subject(:car) { Car.new(5, true, 'XX11KK') }

  describe '#<=>' do
    context 'compares bike delivery speed' do
      it { expect(bike > car).to be true }      
    end

    context 'compares bikes delivery speed' do      
      it { expect(bike == bike).to be true }
    end
  end

  describe '#delivery_time' do
    context 'check bike delivery time' do
      order = DeliveryService.new(3, 10)
      it { expect(bike.delivery_time(order.distance)).to eq(60) }
    end
  end
end
 