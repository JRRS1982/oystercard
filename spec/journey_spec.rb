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

    it 'Expect journey to be true if no exit station' do
      expect(subject.in_journey?).to eq true
    end
  end

  context '#changing the journey to false' do
    it 'Journey to finish' do
      subject.finish(station2)
      expect(subject.in_journey?).to eq false
    end
  end
end
######################################################################################################


#   let(:station) { double :station, zone: 1 }

#   it "knows if a journey is not complete" do
#     expect(subject).not_to be_complete
#   end

#   it 'has a penalty fare by default' do
#     expect(subject.fare).to eq Journey::PENALTY_FARE
#   end

#   it "returns itself when exiting a journey" do
#     expect(subject.finish(station)).to eq(subject)
#   end

#   context 'given an entry station' do
#     subject { described_class.new(entry_station: station) }

#     it 'has an entry station' do
#       expect(subject.entry_station).to eq station
#     end

#     it "returns a penalty fare if no exit station given" do
#       expect(subject.fare).to eq Journey::PENALTY_FARE
#     end

#     context 'given an exit station' do
#       let(:other_station) { double :other_station }

#       before do
#         subject.finish(other_station)
#       end

#       it 'calculates a fare' do
#         expect(subject.fare).to eq 1
#       end

#       it "knows if a journey is complete" do
#         expect(subject).to be_complete
#       end
#     end
#   end
# end
