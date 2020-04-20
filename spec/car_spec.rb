require 'rspec'
require_relative '../lib/dependencies'

RSpec.describe Car do
  let(:car) { Car.new(10, true , 'XX11KK') }

  describe 'creation' do       
    it 'should be with current_weight' do      
      expect(car.current_weight).to eq(10)      
    end

    it 'should be available' do      
      expect(car.available).to be true      
    end

    it 'return registration number' do      
      expect(car.registration_number).to eq('XX11KK')      
    end
  end

  describe 'constants' do
    it 'return CAR_MAX_WEIGHT constant ' do
      expect(Car::CAR_MAX_WEIGHT).to eq(100)
    end
  end
 end
 