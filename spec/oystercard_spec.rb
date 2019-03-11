require 'Oystercard'
describe Oystercard do

  it 'has a balance' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do

    it 'is able to top-up' do
      subject.top_up(5)
      expect(subject.balance).to eq 5
    end

    it 'raises error when topping up to more than 90' do
      subject.top_up(90)
      expect {subject.top_up(1)}.to raise_error(
        "Unsuccessful. You have the maximum allowed amount on your card."
      )
    end

  end

  it 'able to deduct from balance' do
    subject.top_up(90)
    subject.deduct(10)
    expect(subject.balance).to eq 80
  end

  it 'can tell us the users journey status' do
    expect(subject.in_journey).to eq false
  end

  it 'changes journey status with a touch_in' do
    subject.top_up(90)
    subject.touch_in
    expect(subject).to be_in_journey
  end

  it 'changes journey status with a touch_out' do
    allow subject.in_journey = true
    subject.touch_out
    expect(subject).not_to be_in_journey
  end

  it 'raises an error when we touch_in with less than £1' do
    expect {subject.touch_in}.to raise_error{
      "Sorry, your balance is too low to start this journey."
    }
  end

end
