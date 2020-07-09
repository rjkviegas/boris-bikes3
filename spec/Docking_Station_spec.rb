# test git add .
require 'Docking_Station'

describe DockingStation do
   it { is_expected.to respond_to :release_bike }



   it 'if default is not specified, constant is used' do
     expect { 21.times { subject.dock(Bike.new) }}.to raise_error('Docking full')
   end

   it 'if default is not specified, constant is used' do
     station1 = DockingStation.new(30)
     expect { 31.times { station1.dock(Bike.new) }}.to raise_error('Docking full')
   end

   #
   it 'can call dock method 20times' do
     DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
     expect(subject.bikes.count).to eq DockingStation::DEFAULT_CAPACITY
   end

   it 'raises an error message when no bikes left' do
     expect { subject.release_bike }.to raise_error('no bikes left')
     end

   it { is_expected.to respond_to(:bikes) }

end

