class Bike
  def initialize 
    @working = true
  end

  def broken
    raise 'Bike already known to be broken' if @working == false
    @working = false
    self
  end

  def working?
    @working
  end
end