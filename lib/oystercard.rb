require './lib/station.rb'
require './lib/journey.rb'

class Oystercard

  attr_reader :balance, :journeys

  REQUIRED_BALANCE = 1
  PENALTY_FARE = 6

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

    if @journeys != []
      deduct(PENALTY_FARE) if journeys[-1].in_journey? == true
    end
    journey = Journey.new(entry_station)
    @journeys << journey
  end

  def touch_out(exit_station)
    if @journeys == [] 
      deduct(PENALTY_FARE)
    elsif journeys[-1].in_journey? == false
      deduct(PENALTY_FARE)
    elsif journeys[-1].in_journey? == true
      journeys[-1].finish(exit_station)
      deduct(journeys[-1].fare)
    end
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
