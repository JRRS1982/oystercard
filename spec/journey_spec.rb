require './lib/journey'

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
end
