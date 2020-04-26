require 'rspec'
require_relative '../lib/dependencies'

RSpec.describe Bike do 
  before { DeliveryService.new(1,1) }
  
  describe '.all method' do    
    subject { Bike.all }
    it 'should return all bikes from park' do      
      expect(subject).to eq(2)
    end
  end

  describe '.find_by_available method' do
    subject { Bike.find_by_available(true) }
    it 'should return first available bike' do
      expect(subject.available).to be true
    end
  end

  describe '.filter_by_available methods' do
    subject { Bike.filter_by_available(false) }
    it 'should return all not available bike' do
      expect(subject).to be_empty
    end
  end

  describe '.find_by_package_weight' do
    subject { Bike.find_by_package_weight(3) }
    it 'find first bike with equal package weight' do
      expect(subject.package_weight).to eq(3)
    end
  end

  describe '.filter_by_package_weight' do
    it "filter bikes by package weight" do
      Bike.filter_by_package_weight do |bike|
        expect(bike.package_weight).to be <= 5
      end
    end    
  end

  describe '.find_by_location' do
    subject { Bike.find_by_location('In garage') }
    it "find bike location" do      
      expect(subject.location).to eq('In garage')
    end
  end  

  describe '.filter_by_location' do
    subject { Bike.filter_by_location('On route') }
    it "return all bikes with 'On route' location" do      
      expect(subject).to be_empty
    end
  end  

  describe '.find_by_number_of_deliveries' do
    subject { Bike.find_by_number_of_deliveries(0) }
    it "return current number deliveries to bike" do      
      expect(subject.number_of_deliveries).to eq(0)
    end
  end 

  describe '.filter_by_number_of_deliveries' do    
    it "filters bikes by delivery numbers" do 
      Bike.filter_by_number_of_deliveries do |bike|     
        expect(bike.number_of_deliveries).to eq(0)
      end
    end
  end

  describe '.find_by_delivery_cost' do
    subject { Bike.find_by_delivery_cost(3) }
    it "find bikes with current cost" do      
      expect(subject.delivery_cost).to eq(3)
    end
  end

  describe 'filter_by_delivery_cost' do
    it "filters bikes by delivery cost" do
      Bike.filter_by_delivery_cost do |bike|     
        expect(bike.delivery_cost).to eq(3) 
      end
    end
  end
end
 