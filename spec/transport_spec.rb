require_relative 'spec_helper'

class DummyTransport < Transport
  def initialize
    @available = true
  end
end

RSpec.describe DummyTransport do  

  describe '#toggle_available!' do
    context 'when toggle availability' do
      it { expect(subject.toggle_available!).to be false }      
    end
  end

  describe '#available?' do
    context 'when check availability' do      
       it { expect(subject.available?).to be true }      
    end
  end
end
