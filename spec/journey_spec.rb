require 'journey'

describe Journey do
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