<<<<<<< HEAD
require_relative 'station'
=======
require './lib/journey.rb'
>>>>>>> 14th-march-ch14

class Oystercard

  attr_reader :balance, :journeys

<<<<<<< HEAD
  MINIMUM_FARE = 2
=======
  REQUIRED_BALANCE = 1
>>>>>>> 14th-march-ch14

  def initialize
    @balance = 0
  end

  def top_up(amount)
    raise max_reached_message if max_reached(amount)

    @balance += amount
  end

<<<<<<< HEAD
=======
  def touch_in(entry_station)
    raise min_balance_message if @balance < REQUIRED_BALANCE
  
    @journeys << { :entry => entry_station }
  end

  def touch_out(exit_station)
    @journeys[-1][:exit] = exit_station

    deduct(MINIMUM_FARE)
  end

  def in_journey?
    return true if @entry_station
  end

>>>>>>> 14th-march-ch14
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
