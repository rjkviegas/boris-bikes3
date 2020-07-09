# test git add .
require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes


  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock(bike)
    fail 'Docking full' if self.full?
      @bikes.push(bike)
  end


  def release_bike
    fail 'no bikes left' if @bikes.empty?
      @bikes.pop
    end


  # private

  def full?
    @bikes.count >= @capacity ? true : false
  end

  def empty?
    @bike.count == O ? true : false
  end
end


# docking_station = DockingStation.new

# p bmx = bike.release_bike.working?