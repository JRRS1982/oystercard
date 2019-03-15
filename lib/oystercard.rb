require './lib/station.rb'
require './lib/journey.rb'

class Oystercard

  attr_reader :balance, :journeys

  REQUIRED_BALANCE = 1
  PENALTY_FARE = 6
  MINIMUM_FARE = 2

  def initialize
    @balance = 0
    @journeys = []
  end

  def top_up(amount)
    raise max_reached_message if max_reached(amount)

    @balance += amount
  end

  def touch_in(entry_station)
    raise min_balance_message if @balance < REQUIRED_BALANCE
  
    @journeys << { :entry => entry_station }
  end

  def touch_out(exit_station)
    @journeys[-1][:exit] = exit_station

    deduct(MINIMUM_FARE)
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
