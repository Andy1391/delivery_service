RSpec.describe Car do
  let(:park) { [Car.new(5, 'EA0635BO', 'In garage'), Car.new(3, 'AA0585BO', 'On route')] }
  
  describe '.all' do       
    context 'when need return all Cars from park' do
      it { park }
      it { expect(Car.all.size).to eq(2) }       
    end
  end

  describe '.find_by_available(value)' do
    context 'when need to find available Car' do
      it { expect(Car.find_by_available(true).available).to be_truthy }
    end

    context 'when need to find not available Car' do
      it { expect(Car.find_by_available(false)).to be_nil }
    end
  end

  describe '.filter_by_available(&block)' do
    context 'when need to find all available Cars' do
      it { expect(Car.filter_by_available{ |n| n == true }.size).to eq(2) }
    end
  end

  describe '.find_by_package_weight(value)' do
    context 'when need to find a Car with a specific package weight' do
      it { expect(Car.find_by_package_weight(3).package_weight).to eq(3) }
    end
  end

  describe '.filter_by_package_weight(&block)' do     
    context 'when to filter Cars by package weight ' do      
      it { expect(Car.filter_by_package_weight{ |n| n < 3 }.size).to eq(0) }
      it { expect(Car.filter_by_package_weight{ |n| n > 3 }.size).to eq(1) }
    end
  end

  describe '.find_by_location(value)' do
    context 'when the Car is in the garage' do
      it { expect(Car.find_by_location('In garage').location).to eq('In garage') }
    end
  end

  describe '.filter_by_location(&block)' do
    context 'when need to find all Cars by location' do
      it { expect(Car.filter_by_location{ |n| n == 'In garage' }.size).to eq(1) }
      it { expect(Car.filter_by_location{ |n| n == 'On route' }.size).to eq(1) }
    end
  end

  describe '.find_by_number_of_deliveries(value)' do
    context 'when Car need to find Car with number of deliveries' do
      it { expect(Car.find_by_number_of_deliveries(3)).to be_nil }
    end
  end

  describe '.filter_by_number_of_deliveries(&block)' do
    context 'when to filter Cars by number of deliveries' do
      it { expect(Car.filter_by_number_of_deliveries{ |n| n >= 0 }.size).to eq(2) }
    end
  end

  describe '.find_by_delivery_cost(value)' do
    context 'when find Car by delivery cost' do
      it { expect(Car.find_by_delivery_cost(5).delivery_cost).to eq(5) }
    end
  end

  describe '.filter_by_delivery_cost(&block)' do
    context 'when to filter Cars by delivery cost' do
      it { expect(Car.filter_by_delivery_cost{|n| n < 4}).to be_empty}
      it { expect(Car.filter_by_delivery_cost{|n| n >= 5}.size).to eq(2)}
    end
  end

  describe '#delivery_time(distance)' do
    subject(:car) { Car.new(package_weight, registration_number, location) }
    let(:package_weight) { 3 }
    let(:location) { 'On route' }
    let(:registration_number) { 'XX7744HJ' }
    let(:distance) { 100 }
    context 'check car delivery time' do      
      it { expect(car.delivery_time(distance)).to eq(120) }
    end
  end  
end