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
<<<<<<< HEAD

    end
=======
>>>>>>> ea4630e7d4d0c177ca357749316e93019bff3567
  end

  private

  def full?
    @bikes.count >= 20 ? true : false
  end

end


# docking_station = DockingStation.new

# p bmx = bike.release_bike.working?