require './lib/journey.rb'

describe Journey do
  let(:station) { double :station, zone: 2 }
  let(:station2) { double :station2, zone: 3 }
  subject { described_class.new(station) } 

  context '#entry station' do
    it 'records an entry station' do
      expect(subject.entry_station).to eq station
    end
  end

  context '#exit station' do
    it 'finish receives the exit station' do
      expect(subject.finish(station2)).to eq station2
    end
  end

  context '#in journey?' do
    it 'Expect in_journey to be true if no exit station' do
      expect(subject.in_journey?).to eq true
    end

    it 'Expect journey_complete to return true after finish' do
      subject.finish(station2)
      expect(subject).to be_journey_complete
    end
  end

  context '#changing the journey to false' do
    it 'Journey to finish' do
      subject.finish(station2)
      expect(subject.in_journey?).to eq false
    end
  end

  context '#responds to a fare method' do
    it { is_expected.to respond_to(:fare) }  
  end

  context 'returns a fare' do
    it 'returns the minimum fare when we touch in and touch out' do
      subject.finish(station2)
      expect(subject.fare).to eq Journey::MINIMUM_FARE
    end

    it 'returns the minimum fare when we touch in and touch out' do
      expect(subject.fare).to eq Journey::PENALTY_FARE
    end
  end
end
