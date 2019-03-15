class Station
  attr_reader :station, :zone

  def initialize(station, zone)
    @station = station
    @zone = zone
  end
end
