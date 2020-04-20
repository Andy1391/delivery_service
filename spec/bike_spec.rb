require 'rspec'
require_relative '../lib/dependencies'

RSpec.describe Bike do
  let(:bike) { Bike.new(5, false) }
  let(:car) { Car.new(5, true , 'XX11KK') }

  describe 'creation' do       
    it 'should be with current_weight' do      
      expect(bike.current_weight).to eq(5)      
    end

    it 'should be not available' do      
      expect(bike.available).to be false      
    end
  end

  describe 'constants' do 
    it "return Bike's constant " do
      expect(Bike::BIKE_MAX_WEIGHT).to eq(10)
      expect(Bike::BIKE_MAX_DISTANCE).to eq(30)
    end
  end

  describe 'compare transport' do
    it 'compare bike and car current weight packages' do
      expect(bike.current_weight).to eq(car.current_weight)
    end
  end
 end
 