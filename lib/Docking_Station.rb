require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :working_bikes, :capacity, :broken_bikes, :bikes


  def initialize(capacity=DEFAULT_CAPACITY)
    @working_bikes = []
    @broken_bikes = []
    @capacity = capacity
    @bikes = 0
  end

  def dock(bike)
    fail 'Docking full' if self.full?
      bike.working? ? @working_bikes << bike : @broken_bikes << bike
      @bikes += 1
      self
  end


  def release_bike
    fail 'No working_bikes docked' if @working_bikes.empty?
      @bikes -= 1
      working_bikes.pop
  end

  private

  def full?
    @bikes >= @capacity ? true : false
  end

  def empty?
    @bikes == O ? true : false
  end
end
=begin
dock1 = DockingStation.new
# p dock1.dock(Bike.new)
# p dock1.bikes
p 21.times {dock1.dock(Bike.new)}
=end

class Van
  attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = 0
    @capacity = capacity
    @stored_bikes = []
  end

  def store(bike_array)
    bike_array.each do |bike| 
      fail('Van at capacity') if self.full?
      @stored_bikes << bike 
      @bikes += 1
    end
    self
  end

  def dispense_bikes
    fail 'No bikes stored' if @stored_bikes.empty?
      @stored_bikes.each do |bike| 
      @bikes -= 1
    end
    @stored_bikes
  end

  private

  def full?
    @bikes == capacity ? true : false
  end
end

class Garage
  def initialize(capacity = 100)
    @bikes = []
    @capacity = capacity
  end
end


