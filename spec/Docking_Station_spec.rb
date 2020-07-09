# test git add .
require 'Docking_Station'

describe DockingStation do
   it { is_expected.to respond_to :release_bike }



   it 'raises an error message when dock full' do

     expect { 21.times { subject.dock(Bike.new) }}.to raise_error('Docking full')
   end

   # it 'releases a working bike' do
   #   bike = subject.release_bike
   #   expect(bike).to be_working
   # end
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

