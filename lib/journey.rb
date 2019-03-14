require './lib/station.rb'

class Journey

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
