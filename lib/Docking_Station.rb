# test git add .
require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'Docking full' if self.full?
      @bikes.push(bike)
  end


  def release_bike
    fail 'no bikes left' if @bikes.count == 0
      @bikes.pop
  end

  private

  def full?
    @bikes.count >= 20 ? true : false
  end

end


# docking_station = DockingStation.new

# p bmx = bike.release_bike.working?