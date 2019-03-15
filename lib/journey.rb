require './lib/station.rb'

class Journey

  PENALTY_FARE = 6 
  MINIMUM_FARE = 2

  attr_reader :entry_station, :exit_station

  def initialize(entry_station)
    @exit_station = nil
    @entry_station = entry_station
  end 

  def finish(exit_station)
    @exit_station = exit_station
  end

  def journey_complete
    !exit_station.nil? 
  end

  def in_journey?
    @exit_station.nil? 
  end

  def fare
    PENALTY_FARE unless complete? if complete? {
      @fare - MINIMUM_FARE
    }

    # @fare = MINI MUM_FARE if complete? else PENTALTY
  end

  def calculate_fare
  end 
end