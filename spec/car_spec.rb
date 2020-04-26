require 'rspec'
require_relative '../lib/dependencies'

RSpec.describe Car do
  
  before { DeliveryService.new(1,5) } 

  describe 'constants' do
    it 'return CAR_MAX_WEIGHT constant ' do
      expect(Car::CAR_MAX_WEIGHT).to eq(100)
    end
  end

  describe '.all method' do    
    subject { Car.all }
    it 'should return all cars' do      
      expect(subject).to eq(4)
    end
  end

  describe '.find_by_available' do
    subject { Car.find_by_available(true) }
    it 'should return first available car' do
      expect(subject.available).to be true
    end
  end

  describe '.filter_by_available' do
    subject { Car.filter_by_available(false) }
    it 'should return all not available car' do
      expect(subject).to be_empty
    end
  end

  describe '.find_by_package_weight' do
    subject { Car.find_by_package_weight(5) }
    it 'return car with some package weight' do
      expect(subject.package_weight).to eq(5)
    end
  end

  describe '.filter_by_package_weight' do
    it "filter cars by package weight" do
      Car.filter_by_package_weight do |car|
        expect(car.package_weight).to be <= 5
      end
    end    
  end

  describe '.find_by_location' do
    subject { Car.find_by_location('In garage') }
    it "find car location" do      
      expect(subject.location).to eq('In garage')
    end
  end  

  describe '.filter_by_location' do
    subject { Car.filter_by_location('On route') }
    it "return all cars with 'On route' location" do      
      expect(subject).to be_empty
    end
  end  

  describe '.find_by_number_of_deliveries' do
    subject { Car.find_by_number_of_deliveries(0) }
    it "return current number deliveries to car" do      
      expect(subject.number_of_deliveries).to eq(0)
    end
  end 

  describe '.filter_by_number_of_deliveries' do    
    it "filters cars by delivery numbers" do 
      Car.filter_by_number_of_deliveries do |car|     
        expect(car.number_of_deliveries).to eq(0)
      end
    end
  end

  describe '.find_by_delivery_cost' do
    subject { Car.find_by_delivery_cost(5) }
    it "find car with delivery cost equal 5" do      
      expect(subject.delivery_cost).to eq(5)
    end
  end

  describe 'filter_by_delivery_cost' do
    it "filters cars by delivery cost" do
      Car.filter_by_delivery_cost do |car|     
        expect(car.delivery_cost).to eq(5) 
      end
    end
  end
 end  
