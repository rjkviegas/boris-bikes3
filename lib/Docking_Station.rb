# require_relative 'bike'


class DockingStation
  attr_reader :bike

  def dock(bike)
    fail 'Docking full' if @bike
    @bike = bike
  end

  def release_bike
    fail 'no bikes left' unless @bike
    @bike
  end


end


# docking_station = DockingStation.new

# p bmx = bike.release_bike.working?