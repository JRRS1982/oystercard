require 'Oystercard'
describe Oystercard do
  before :each do
    @entry_station = double(:entry_station)
    @exit_station = double(:exit_station)
  end

  it 'has a balance' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do
    before :each do
      subject.top_up(90)
    end

    it 'is able to top-up' do
      expect(subject.balance).to eq 90
    end

    it 'raises error when topping up to more than 90' do
      expect { subject.top_up(1) }.to raise_error(
        "Unsuccessful. You have the maximum allowed amount on your card."
      )
    end
  end
  
<<<<<<< HEAD

=======
  describe '#touch_in' do
    it 'changes journey status' do
      subject.top_up(90)
      subject.touch_in(@entry_station)
      expect(subject).to be_in_journey
    end
  
    it 'raises an error when the balance is less than £1' do
      expect { subject.touch_in(@entry_station) }.to raise_error "Sorry, your balance is too low to start this journey."
    end

    it 'records the entry station' do
      subject.top_up(10)
      subject.touch_in(@entry_station)
      expect(subject.journeys[-1][:entry]).to eq @entry_station
    end
  end
>>>>>>> 14th-march-ch14

  describe '#touch_out' do
    before :each do
      subject.top_up(10)
      subject.touch_in(@entry_station)    
    end
    
    it 'deducts the correct amount from my card for the journey' do
      minimum_fare = described_class::MINIMUM_FARE
      expect { subject.touch_out(@exit_station) }.to change { subject.balance }.by(-minimum_fare)
    end

    it 'changes journey status' do
      subject.touch_out(@exit_station)
      expect(subject).not_to be_in_journey
    end

    it 'records the exit station' do
      subject.touch_out(@exit_station)
      expect(subject.journeys[-1][:exit]).to eq @exit_station
    end
  end

  describe '#journeys' do
    it "returns an empty array at first" do
      expect(subject.journeys).to eq []
    end

    it "returns an empty array at first" do  
      subject.top_up(10)
      subject.touch_in('Harringay')
      subject.touch_out('Liverpool Street')  
      expect(subject.journeys.count).to eq 1
    end

  end
end
