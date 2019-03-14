class Journey

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