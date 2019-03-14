require_relative 'station'

class Oystercard

  attr_reader :balance,  :journeys
  # attr_reader :entry_station,

  MINIMUM_FARE = 2

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise max_reached_message if max_reached(amount)

    @balance += amount
  end

  private

  def deduct(amount)
    @balance -= amount
  end

  def max_reached_message
    "Unsuccessful. You have the maximum allowed amount on your card."
  end

  def max_reached(amount)
    (@balance + amount) > 90
  end

  def min_balance_message
    "Sorry, your balance is too low to start this journey."
  end

end
