class DummyTransport < Transport
  def initialize
    @available = true   
  end
end

RSpec.describe DummyTransport do  
  let (:bike) { Bike.new(1, 'In garage') }
  let (:car) { Car.new(3, 'XX8877HH', 'On route') }

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

  describe '#location=(location)' do
    context 'when change location to vehicle' do
      it { expect(bike.location=('On route')).to eq('On route') }
    end

    context 'when location not found' do
      it { expect {bike.location=('Underground')}.to raise_error(NotImplementedError) }
    end
  end
end