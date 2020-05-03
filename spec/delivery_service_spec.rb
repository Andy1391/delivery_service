require_relative 'spec_helper'

RSpec.describe DeliveryService do
  subject(:order) { DeliveryService.new(5,29)}
  subject(:order_for_car) { DeliveryService.new(14,29)}

  describe '#choose_transport_type' do
    context 'when transport is found' do
      it { expect(order.choose_transport_type).not_to be_nil }
    end

    context 'when package weight less than 10 kg' do
      it { expect(order.choose_transport_type.class).to eq(Bike) }      
    end  

    context 'when package weight more than 10 kg' do
      it { expect(order_for_car.choose_transport_type.class).to eq(Car) }      
    end
  end

  describe '#toggle_confirm_delivery!' do
    context 'when delivery is confirmed' do
      it { expect(order.toggle_confirm_delivery!).to be true }
    end
  end  
end
