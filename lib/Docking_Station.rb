require_relative 'bike'



class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    if @bikes.count == 20
      fail 'Docking full'
      else
        @bikes.push(bike)
     end
    end


  def release_bike
    if @bikes.count == 0
    fail 'no bikes left'
    else
      @bikes.pop
    # @bike
    end
  end


end


# docking_station = DockingStation.new

# p bmx = bike.release_bike.working?