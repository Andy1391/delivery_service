RSpec.describe Bike do
  let(:park) { [Bike.new(1, 'In garage'), Bike.new(3, 'On route'), Bike.new(6, 'In garage')] }
  
  describe '.all' do       
    context 'when need return all bikes from park' do
      it { park }
      it { expect(Bike.all.size).to eq(3) }       
    end
  end

  describe '.find_by_available(value)' do
    context 'when need to find available bike' do
      it { expect(Bike.find_by_available(true).available).to be_truthy }
    end

    context 'when need to find not available bike' do
      it { expect(Bike.find_by_available(false)).to be_nil }
    end
  end

  describe '.filter_by_available(&block)' do
    context 'when need to find all available bikes' do
      it { expect(Bike.filter_by_available{ |n| n == true }.size).to eq(3) }
    end
  end

  describe '.find_by_package_weight(value)' do
    context 'when need to find a bike with a specific package weight' do
      it { expect(Bike.find_by_package_weight(3).package_weight).to eq(3) }
    end
  end

  describe '.filter_by_package_weight(&block)' do     
    context 'when to filter bikes by package weight ' do      
      it { expect(Bike.filter_by_package_weight{ |n| n >= 3 }.size).to eq(2) }
    end
  end

  describe '.find_by_location(value)' do
    context 'when the bike is in the garage' do
      it { expect(Bike.find_by_location('In garage').location).to eq('In garage') }
    end
  end

  describe '.filter_by_location(&block)' do
    context 'when need to find all bikes by location' do
      it { expect(Bike.filter_by_location{ |n| n == 'In garage' }.size).to eq(2) }
      it { expect(Bike.filter_by_location{ |n| n == 'On route' }.size).to eq(1) }
    end
  end

  describe '.find_by_number_of_deliveries(value)' do
    context 'when bike need to find bike with number of deliveries' do
      it { expect(Bike.find_by_number_of_deliveries(3)).to be_nil }
    end
  end

  describe '.filter_by_number_of_deliveries(&block)' do
    context 'when to filter bikes by number of deliveries' do
      it { expect(Bike.filter_by_number_of_deliveries{ |n| n >= 0 }.size).to eq(3) }
    end
  end

  describe '.find_by_delivery_cost(value)' do
    context 'when find bike by delivery cost' do
      it { expect(Bike.find_by_delivery_cost(3).delivery_cost).to eq(3) }
    end
  end

  describe '.filter_by_delivery_cost(&block)' do
    context 'when to filter bikes by delivery cost' do
      it { expect(Bike.filter_by_delivery_cost{|n| n > 3}).to be_empty}
      it { expect(Bike.filter_by_delivery_cost{|n| n < 5}.size).to eq(3)}
    end
  end
  
  describe '#delivery_time(distance)' do
    subject(:bike) { Bike.new(package_weight, location)}
    let(:package_weight) { 1 }
    let(:location) { 'In garage' }
    let(:distance) { 10 }  
    context 'check bike delivery time' do         
      it { expect(bike.delivery_time(distance)).to eq(60) }
    end
  end
end