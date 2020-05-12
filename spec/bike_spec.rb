RSpec.describe Bike do
  subject(:bike) { Bike.new(package_weight, is_available) }
  let(:package_weight) { 1 }
  let(:is_available) { true }
  let(:distance) { 10 }
 
  describe '#delivery_time(distance)' do
    context 'check bike delivery time' do      
      it { expect(bike.delivery_time(distance)).to eq(60) }
    end
  end
end
