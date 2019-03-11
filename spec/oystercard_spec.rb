require 'Oystercard'
describe Oystercard do

  it 'has a balance' do
    expect(subject.balance).to eq 100
  end

  it 'is able to top-up' do
    subject.top_up(100)
    expect(subject.balance).to eq 200
  end

end
