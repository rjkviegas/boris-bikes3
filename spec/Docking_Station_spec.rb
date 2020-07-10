require 'Docking_Station'

describe DockingStation do
    it { is_expected.to respond_to :release_bike }
    it { is_expected.to respond_to(:working_bikes) }
    
  describe '#capacity' do
    it 'if capacity not specified, constant is used' do
      expect { 21.times { subject.dock(Bike.new) }}.to raise_error("Docking full")
    end

    it 'if capacity is specified, constant it not used' do
      station = DockingStation.new(30)
      expect { 31.times { station.dock(Bike.new) }}.to raise_error('Docking full')
    end

    it 'capacity is defined by the constant if undefined on instantiation' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect(subject.working_bikes.count).to eq DockingStation::DEFAULT_CAPACITY
    end
  end

  describe '#release_bike' do
    it 'raises an error message when no working_bikes left' do
      expect { subject.release_bike }.to raise_error('No working_bikes docked')
    end

    it 'does not return a broken bike' do
      broken_bike = Bike.new.broken
      expect { subject.dock(broken_bike).release_bike }.to raise_error("No working_bikes docked")
    end

    let(:bike) { double :bike }
    it 'release a working bike' do
      allow(bike).to receive(:working?).and_return(true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end
    
    it 'release a working bike' do
      bike = double("bike",:working? => true)
      subject.dock(bike)
      released_bike = subject.release_bike
      expect(released_bike).to be_working
    end
  end
end 