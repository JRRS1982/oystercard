require './lib/journey'

describe Journey do
<<<<<<< HEAD
  it 'checks for journey class' do
  end

  describe '#in_journey' do
    it 'returns false when first initialised' do
      expect(subject).not_to be_in_journey
    end
  end
end


#   it 'raises an error when the balance is less than £1' do
#     expect { subject.touch_in(@entry_station) }.to raise_error "Sorry, your balance is too low to start this journey."
#   end

#   it 'records the entry station' do
#     subject.top_up(10)
#     subject.touch_in(@entry_station)
#     expect(subject.journeys[-1][:entry]).to eq @entry_station
#   end
# end
=======
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
>>>>>>> 14th-march-ch14
