class Journey
attr_reader :entry_station, :exit_station
MINIMUM_FARE = 1
PENALTY_FARE = 6

  def initialize(entry_station = nil)
    @entry_station = entry_station
  end

  def finish(exit_station)
    @exit_station = exit_station
  end

  def completed?
    !!@entry_station && !!@exit_station
  end

  def fare
    completed? ? MINIMUM_FARE : PENALTY_FARE
  end

end

