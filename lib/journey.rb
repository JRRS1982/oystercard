require './lib/station.rb'

class Journey

<<<<<<< HEAD
  attr_accessor :balance

  REQUIRED_BALANCE = 1
  def initialize
    @journeys = []

  end

  def in_journey?
    if @journeys.empty? 
      return false
    elsif @journeys[-1][:exit] == nil
      return true
    else 
      false
    end
  end

  def touch_in(entry_station)
    raise min_balance_message if @balance < REQUIRED_BALANCE
    @journeys << {:entry => entry_station}
  end

  def touch_out(exit_station)
    # @entry_station = nil
    @journeys[-1][:exit] = exit_station
    deduct(MINIMUM_FARE)
  end

end
=======
  PENTALTY = 10 
  MINIMUM_FARE = 2

  attr_reader :entry_station, :exit_station

  def initialize(entry_station)
    @penalty_fare = PENTALTY
    @entry_station = entry_station
    @exit_station = nil
    @entry_zone = entry_zone
  end 

  def finish(exit_station, exit_zone)
    @exit_station = exit_station
    @exit_zone = exit_zone
  end

  def complete?
    return true unless exit_station.nil?  
  end

  def fare
    @fare = MINIMUM_FARE if complete? else PENTALTY
  end
end
>>>>>>> 14th-march-ch14
