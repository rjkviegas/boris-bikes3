# require_relative 'bike'


class DockingStation
  attr_reader :bike

  def dock(bike)
    @bike = bike
  end

  def release_bike
    Bike.new
  end


end


# docking_station = DockingStation.new

# p bmx = bike.release_bike.working?