RSpec.describe DeliveryService do
  subject(:order) { DeliveryService.new(weight, distance, park)}
  let(:park) { [Bike.new(1, 'In garage'), Bike.new(3, 'On route'), Car.new(11, 'AA8765EG', 'In garage')] }
  let(:distance) { 7 }
  let (:weight) { 1 } 

  describe '#choose_transport_type' do
    context 'when transport is found' do           
      it { expect(order.choose_transport_type).not_to be_nil }
    end

    context 'when the package weight less than 10 kg' do
      let(:weight) { 5 }      
      it { expect(order.choose_transport_type.class).to eq(Bike) }      
    end  

    context 'when the package weight between 11 and 100' do
      let (:weight) { 50 }      
      it { expect(order.choose_transport_type.class).to eq(Car) }      
    end

    context 'when the package weight over 100 kg' do
      let (:weight) { 101 }      
      it { expect(order.choose_transport_type).to be_nil }      
    end

    context 'when the distance is up to 30 km' do
      let(:distance) { 4 }        
      it { expect(order.choose_transport_type.class).to eq(Bike) }      
    end

    context 'when the distance is more than 30 km' do
      let(:distance) { 33 }        
      it { expect(order.choose_transport_type.class).to eq(Car) }      
    end
  end

  describe '#toggle_confirm_delivery!' do
    context 'when delivery is confirmed' do     
      it { expect { order.toggle_confirm_delivery! }.to change { order.delivery_confirmed }.from(false).to(true) }
      it { expect { order.toggle_confirm_delivery! }.to change { park.first.number_of_deliveries }.from(0).to(1) }
    end
  end  
end