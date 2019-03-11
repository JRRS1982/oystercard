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

end
