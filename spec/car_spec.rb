RSpec.describe Car do
  subject(:car) { Car.new(package_weight, is_available, registration_number) }
  let(:package_weight) { 3 }
  let(:is_available) { true }
  let(:registration_number) { 'XX7744HJ' }
  let(:distance) { 100 }

  describe '#delivery_time(distance)' do
    context 'check car delivery time' do      
      it { expect(car.delivery_time(distance)).to eq(120) }
    end
  end
end
 