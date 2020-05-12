class DummyTransport < Transport
  def initialize
    @available = true   
  end
end

RSpec.describe DummyTransport do  
  let (:bike) { Bike.new(1, true) }
  let (:car) { Car.new(3, true, 'AA3987BB') }

  describe '#toggle_available!' do
    context 'when toggle availability' do
      it { expect { subject.toggle_available!}.to change { subject.available }.from(true).to(false) }
    end
  end

  describe '#available?' do
    context 'when check availability' do      
       it { expect(subject.available?).to be true }      
    end
  end

  describe '#<=>(other)' do
    context 'when compares delivery speed' do
      it { expect(bike < car).to be false }
    end
  end 
end
