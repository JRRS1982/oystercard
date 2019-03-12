require 'Oystercard'
describe Oystercard do

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

  describe '#in_journey' do
    it 'tells us the users journey status' do
      expect(subject).not_to be_in_journey
    end
  end
  
  describe '#touch_in' do
    it 'changes journey status' do
      subject.top_up(90)
      subject.touch_in
      expect(subject).to be_in_journey
    end
  
    it 'raises an error when the balance is less than £1' do
      expect { subject.touch_in }.to raise_error "Sorry, your balance is too low to start this journey."
    end
  end

  describe '#touch_out' do
    before :each do
      subject.top_up(10)
      subject.touch_in    
    end
    
    it 'deducts the correct amount from my card for the journey' do
      minimum_fare = described_class::MINIMUM_FARE
      expect { subject.touch_out }.to change { subject.balance }.by(-minimum_fare)
    end

    it 'changes journey status' do
      subject.touch_out
      expect(subject).not_to be_in_journey
    end
  end
end
