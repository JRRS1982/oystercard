require './lib/oystercard'
require './lib/journey'

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
  
  describe '#touch_in' do
    it 'raises an error when the balance is less than £1' do
      expect { subject.touch_in(@entry_station) }.to raise_error "Sorry, your balance is too low to start this journey."
    end
  end

  describe '#touch_out without touch_in' do
    before :each do 
      subject.top_up(10)
    end

    it 'deducts' do
      penalty_fare = Oystercard::PENALTY_FARE
      expect { subject.touch_out(@exit_station) }.to change { subject.balance }.by(-penalty_fare)
    end

  end

  describe '#touch_out' do
    before :each do
      subject.top_up(10)
      subject.touch_in(@entry_station)    
    end
    
    it 'deducts the correct amount from my card for the journey' do
      minimum_fare = described_class::MINIMUM_FARE
      expect { subject.touch_out(@exit_station) }.to change { subject.balance }.by(-minimum_fare)
    end
  end

  describe '#journeys' do
    it "returns an empty array at first" do
      expect(subject.journeys).to eq []
    end

    it "registers one touch in and out as one journey" do  
      subject.top_up(10)
      subject.touch_in(@entry_station)
      subject.touch_out(@exit_station)  
      expect(subject.journeys.count).to eq 1
    end

    it "Check the journey and see if includes completed journey" do  
      subject.top_up(10)
      subject.touch_in(@entry_station)
      subject.touch_out(@exit_station)  
      expect(subject.journeys[-1]).to be_a Journey
    end
  end

  # it 'returns a penalty fare if in journey and touch in' do
  #   subject.
  #   expect(subject.fare).to eq Journey::MINIMUM_FARE
  # end

end
