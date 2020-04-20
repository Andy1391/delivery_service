require 'rspec'
require_relative '../lib/dependencies'


RSpec.describe DeliveryService do
  let(:service) { DeliveryService.new(3,60) }
  
  describe 'creation' do       
    it 'should be with distance' do      
      expect(service.distance).to eq(60)      
    end
    
    it 'should be with weight' do      
      expect(service.weight).to eq(3)      
    end
  end

  describe 'confirm delivery' do   
    it 'accept confirm delivery' do      
      allow($stdin).to receive(:gets).and_return('Y')
      string = $stdin.gets
      expect(string).to eq('Y')        
    end   
  end
end
